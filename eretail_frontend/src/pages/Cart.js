import React, { useState } from "react";
import Drawer from "../component/common/Drawer";
import BackDrop from "../component/common/BackDrop";
import { Container, Row, Col } from "react-bootstrap";
import {
  increaseQuantity,
  decreaseQuantity,
  removeProduct,
} from "../api/cart/index";
import CartContainer from "../component/cart/CartContainer";
import "../style/cart.css";
import { FaTrashAlt } from "react-icons/fa";
import FormButton from "../component/form/FormButton";
import { Redirect } from "react-router-dom";
import { PRODUCT_IMAGES } from "../backend";

const Cart = (props) => {
  const [payment, setPayment] = useState(false);

  const incrementQuantity = (cart_product_id) => {
    increaseQuantity(cart_product_id).then((data) => {
      if (data) {
        // console.log("item added:", data);
        let updatedCart = props.cartProduct.map((curElem) => {
          if (curElem.id === data.cart_product_id) {
            return {
              ...curElem,
              quantity: curElem.quantity + 1,
              subtotal: data.subtotal,
            };
          }
          return curElem;
        });

        props.setCartProduct(updatedCart);
        props.setCartTotal({ ...props.cartTotal, total_amount: data.total });
        props.setItemCount(props.itemCount + 1);
      }
    });
  };

  const decrementQuantity = (cart_product_id) => {
    decreaseQuantity(cart_product_id).then((data) => {
      if (data) {
        // console.log("item deducted:", data);
        let updatedCart = props.cartProduct
          .map((curElem) => {
            if (curElem.id === data.cart_product_id) {
              return {
                ...curElem,
                quantity: curElem.quantity - 1,
                subtotal: data.subtotal,
              };
            }
            return curElem;
          })
          .filter((curElem) => curElem.quantity !== 0);

        props.setCartProduct(updatedCart);
        props.setCartTotal({ ...props.cartTotal, total_amount: data.total });
        props.setItemCount(props.itemCount - 1);
      }
    });
  };

  const removeItem = (cart_product_id) => {
    removeProduct(cart_product_id).then((data) => {
      if (data) {
        // console.log("item removed:", data);
        let updatedCart = props.cartProduct.filter((curElem) => {
          return curElem.id !== data.cart_product_id;
        });
        props.setCartProduct(updatedCart);
        props.setCartTotal({ ...props.cartTotal, total_amount: data.total });
        props.setItemCount(props.itemCount - data.quantity);
      }
    });
  };

  const paymentGateway = () => {
    return (
      payment && (
        <Redirect
          to={{
            pathname: "/payment",

            state: { cartTotal: props.cartTotal },
          }}
        />
      )
    );
  };
  const cartProducts = () => {
    return (
      <React.Fragment>
        <Container>
          {props.cartProduct !== undefined && props.cartProduct.length > 0
            ? props.cartProduct.map((product) => {
                return (
                  <CartContainer key={product.id} className="mb-2">
                    <Row style={{ padding: "12px" }}>
                      <Col
                        lg={2}
                        md={3}
                        sm={3}
                        xs={12}
                        className="cart-history-image"
                      >
                        <img
                          src={PRODUCT_IMAGES + product.product[0].image}
                          width="70px"
                          height="70px"
                          alt={product.product[0].name}
                        />
                      </Col>
                      <Col lg={10} md={9} sm={9}>
                        <Row>
                          <Col lg={8}>
                            <h5>{product.product[0].name}</h5>
                            <div>{product.product[0].description}</div>
                            <div>${product.subtotal}</div>
                          </Col>
                          <Col lg={4}>
                            <div
                              className="input-group"
                              style={{ justifyContent: "flex-end" }}
                            >
                              <span>
                                <FormButton
                                  type="button"
                                  className="btn-quantity decrement-quantity btn-focus"
                                  onClick={() => decrementQuantity(product.id)}
                                >
                                  -
                                </FormButton>
                              </span>
                              <div className="quantity-outer">
                                <div className="quantity-inner">
                                  <span>{product.quantity}</span>
                                </div>
                              </div>
                              <span>
                                <FormButton
                                  type="button"
                                  className="btn-quantity increment-quantity btn-focus"
                                  onClick={() => incrementQuantity(product.id)}
                                  disabled={
                                    product.product[0].stock === 0 ||
                                    product.quantity > product.product[0].stock
                                  }
                                >
                                  +
                                </FormButton>
                              </span>
                            </div>
                          </Col>
                        </Row>
                        <Row style={{ padding: "12px 0px 7px 0px" }}>
                          <Col>
                            {product.quantity > product.product[0].stock ||
                            product.product[0].stock === 0 ? (
                              <strong className="out-of-stock">
                                Out of Stock
                              </strong>
                            ) : (
                              <strong className="available">Available</strong>
                            )}
                          </Col>
                          <Col>
                            <div
                              className="quantity"
                              onClick={() => removeItem(product.id)}
                            >
                              <FaTrashAlt />
                              Remove item
                            </div>
                          </Col>
                        </Row>
                      </Col>
                    </Row>
                  </CartContainer>
                );
              })
            : "Your Shopping Cart is empty."}
          {props.cartProduct.length > 0 ? (
            <CartContainer>
              <Row style={{ padding: "12px" }}>
                <Col>
                  <p style={{ textAlign: "center" }}>******Total Bill******</p>
                  <p>
                    Total product count :
                    <span style={{ float: "right" }}>{props.itemCount}</span>
                  </p>
                  <hr></hr>
                  <p>
                    Total amount :
                    <span style={{ float: "right" }}>
                      ${props.cartTotal.total_amount}
                    </span>
                  </p>
                  <p>
                    Shipping :<span style={{ float: "right" }}> Free</span>
                  </p>
                  <FormButton
                    className="full-button"
                    type="button"
                    variant="primary"
                    onClick={() => setPayment(true)}
                    // disabled={isAvailable === false}
                  >
                    Place Order
                  </FormButton>
                </Col>
              </Row>
            </CartContainer>
          ) : null}
        </Container>
      </React.Fragment>
    );
  };
  return (
    <React.Fragment>
      <Drawer className="drawer open cart-drawer" scrollbar="true">
        {cartProducts()}
      </Drawer>
      <BackDrop handleBackDrop={props.handleBackDrop} />
      {paymentGateway()}
    </React.Fragment>
  );
};

export default Cart;
