import React, { useState, useEffect } from "react";
import { SocialIcon } from "react-social-icons";
import { myCart, totalProduct } from "../../api/cart/index";
import Cart from "../../pages/Cart";
import History from "../../pages/History";
import { useCookies } from "react-cookie";
import { isAuthenticated } from "../../api/user/auth";
import PrimarySearchAppBar from "./Header";
import { getOrder } from "../../api/order";

const Base = ({ children, reload = undefined, handleSearchChange }) => {
  const [cookies] = useCookies(["device"]);
  const [cart, setCart] = useState(false);
  const [history, setHistory] = useState(false);
  const [itemCount, setItemCount] = useState();
  const [cartTotal, setCartTotal] = useState({
    cart_id: "",
    total_amount: 0.0,
  });
  const [cartProduct, setCartProduct] = useState([]);
  const [historyData, setHistoryData] = useState({
    historyProduct: [],
    error: "",
  });

  const showCart = () => {
    setCart(!cart);
  };
  const showHistory = () => {
    setHistory(!history);
  };

  const getTotalProductCount = (authData) => {
    totalProduct(authData).then((data) => {
      if (data) {
        // console.log("total products in cart:", data);
        setItemCount(data.total_product);
      }
    });
  };

  const getCartDetails = (authData) => {
    myCart(authData).then((data) => {
      if (data && data.cartData[0]) {
        // console.log("cart items:", data);
        setCartProduct(data.cartData[0].cartproduct);
        setCartTotal({
          ...cartTotal,
          cart_id: data.cartData[0].id,
          total_amount: data.cartData[0].total,
        });
      }
    });
  };

  const getOrderData = (token) => {
    getOrder(token).then((data) => {
      if (data.error) {
        // console.log("error:", data.error);
        setHistoryData({ ...historyData, error: data.error });
      } else {
        // console.log("history data : ", data.historyData);
        setHistoryData({ ...historyData, historyProduct: data.historyData });
      }
    });
  };

  useEffect(() => {
    const userId = isAuthenticated() && isAuthenticated().user.id;
    const token = isAuthenticated() && isAuthenticated().token;
    let authData = { device: cookies.device, userId: userId };

    getTotalProductCount(authData);
    getCartDetails(authData);
    getOrderData(token);
  }, [reload]);

  const handleBackDrop = () => {
    setCart(false);
    setHistory(false);
  };

  const Header = () => {
    return (
      <React.Fragment>
        <PrimarySearchAppBar
          itemCount={itemCount}
          handleSearchChange={handleSearchChange}
          showCart={showCart}
          showHistory={showHistory}
        />
        {cart && (
          <Cart
            cartProduct={cartProduct}
            setCartProduct={setCartProduct}
            cartTotal={cartTotal}
            setCartTotal={setCartTotal}
            cookies={cookies}
            handleBackDrop={handleBackDrop}
            itemCount={itemCount}
            setItemCount={setItemCount}
          />
        )}
        {history && (
          <History historyData={historyData} handleBackDrop={handleBackDrop} />
        )}
      </React.Fragment>
    );
  };

  const Footer = () => {
    return (
      <footer className="footer">
        <h6 className="pt-2">Follow Us</h6>
        <span>
          <SocialIcon network="facebook" bgColor="#fff" />
          <SocialIcon network="linkedin" bgColor="#fff" />
          <SocialIcon network="instagram" bgColor="#fff" />
          <SocialIcon network="twitter" bgColor="#fff" />
          <SocialIcon network="reddit" bgColor="#fff" />
        </span>
        <p className="footer-text pt-2">
          © Copyright 2020 - Company Name. All Rights Reserved.
        </p>
      </footer>
    );
  };
  return (
    <React.Fragment>
      {Header()}
      {children}
      {Footer()}
    </React.Fragment>
  );
};
export default Base;
