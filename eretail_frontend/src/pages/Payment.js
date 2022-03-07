import React, { useEffect, useState } from "react";
import { getmeToken, processPayment } from "../api/payment/index";
import { createOrder } from "../api/order/index";
import { startLoader, successMessage } from "../messages/helper";
import { isAuthenticated } from "../api/user/auth";
import FormContainer from "../component/form/FormContainer";
import Base from "../component/common/Base";
import DropIn from "braintree-web-drop-in-react";
import FormButton from "../component/form/FormButton";

const Payment = (props) => {
  const [info, setInfo] = useState({
    loading: false,
    success: false,
    succMessage: "",
    clientToken: null,
    error: "",
    redirect: false,
    instance: {},
  });

  const [reload, setReload] = useState(false);
  const { success, succMessage, redirect } = info;

  const token = isAuthenticated() && isAuthenticated().token;

  const setSuccess = (value) => {
    setInfo({ ...info, success: value });
  };

  const getToken = (token) => {
    getmeToken(token).then((info) => {
      if (info.success) {
        const clientToken = info.clientToken;
        setInfo({ ...info, success: false, clientToken });
      }
    });
  };

  const performRedirect = () => {
    const timer = setTimeout(() => {
      window.location.href = "/home";
    }, 2000);
    return () => clearTimeout(timer);
  };

  const onPurchase = () => {
    setInfo({ loading: true });
    let nonce;
    let getNonce = info.instance
      .requestPaymentMethod()
      .then((data) => {
        nonce = data.nonce;
        const paymentData = {
          paymentMethodNonce: nonce,
          amount: props.location.state.cartTotal.total_amount,
        };
        processPayment(token, paymentData)
          .then((response) => {
            if (response.error) {
              // console.log("PAYMENT FAILED");
              setInfo({ ...info, error: response.error });
            } else {
              setInfo({ ...info, success: response.success, loading: false });
              // console.log("PAYMENT SUCCESS");
              const orderData = {
                cart_id: props.location.state.cartTotal.cart_id,
                transaction_id: response.transaction.id,
                amount: response.transaction.amount,
              };
              createOrder(token, orderData)
                .then((response) => {
                  if (response.success) {
                    // console.log("ORDER PLACED");
                    setInfo({
                      ...info,
                      success: true,
                      succMessage: response.message,
                      redirect: true,
                    });
                    setReload(!reload);
                  }
                })
                .catch((error) => {
                  setInfo({ loading: false, success: false });
                  // console.log("ORDER FAILED", error);
                });
            }
          })
          .catch((e) => console.log("error : ", e));
      })
      .catch((e) => console.log("NONCE", e));
  };

  useEffect(() => {
    getToken(token);
  }, []);

  const showbtnDropIn = () => {
    return (
      <FormContainer className="px-5 py-3">
        {success && successMessage(succMessage, setSuccess, false, false)}
        <h4 style={{ textAlign: "center" }}>PAYMENT</h4>
        {info.clientToken !== null ? (
          <React.Fragment>
            <DropIn
              options={{ authorization: info.clientToken }}
              onInstance={(instance) => setInfo({ ...info, instance })}
            />
            {success !== true ? (
              <FormButton onClick={onPurchase}>
                Pay ${props.location.state.cartTotal.total_amount}
              </FormButton>
            ) : null}
          </React.Fragment>
        ) : (
          <span style={{ textAlign: "center" }}>{startLoader()}</span>
        )}
      </FormContainer>
    );
  };
  return (
    <Base reload={reload}>
      {showbtnDropIn()}
      {redirect && performRedirect()}
    </Base>
  );
};

export default Payment;
