import React from "react";
import Card from "react-bootstrap/Card";

const CartContainer = (props) => {
  return (
    <Card className={`cart-container p-2 ${props.className}`}>
      {props.children}
    </Card>
  );
};

export default CartContainer;
