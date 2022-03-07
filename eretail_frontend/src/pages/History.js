import React from "react";
import SideDrawer from "../component/common/Drawer";
import BackDrop from "../component/common/BackDrop";
import { Container, Row, Col } from "react-bootstrap";
import CartContainer from "../component/cart/CartContainer";
import "../style/history.css";
import { PRODUCT_IMAGES } from "../backend";
import FormButton from "../component/form/FormButton";

const History = (props) => {
  const displayHistory = () => {
    return (
      <React.Fragment>
        <Container>
          {props.historyData.historyProduct !== undefined &&
          props.historyData.historyProduct.length > 0
            ? props.historyData.historyProduct.map((product) => {
                return (
                  <Col lg={12} md={12} sm={12} xs={12} className="history-cart">
                    <Row>
                      <Col lg={9} md={8} sm={12} xs={12}>
                        <CartContainer key={product.id}>
                          <Row>
                            <Col>
                              <div className="quantity-badge">
                                {product.quantity}
                              </div>
                            </Col>
                          </Row>
                          <Row>
                            <Col lg={4} md={4} className="cart-history-image">
                              <img
                                src={PRODUCT_IMAGES + product.product[0].image}
                                width="70px"
                                height="70px"
                                alt={product.product[0].name}
                              />
                            </Col>
                            <Col lg={8} md={8}>
                              <h5>{product.product[0].name}</h5>
                              <div>{product.product[0].description}</div>
                              <div>${product.product[0].price}</div>
                            </Col>
                          </Row>
                        </CartContainer>
                      </Col>
                      <Col lg={3} md={4} sm={12} xs={12}>
                        <div className="history-total">
                          <p>
                            Total Items: {product.quantity}
                            <br></br> Total Amount:$
                            {product.subtotal}
                          </p>
                        </div>
                      </Col>
                    </Row>
                  </Col>
                );
              })
            : null}
          {props.historyData.error ? (
            <FormButton
              className="mt-3"
              onClick={() => {
                window.location.href = "/login";
              }}
            >
              Login
            </FormButton>
          ) : null}
        </Container>
      </React.Fragment>
    );
  };

  return (
    <React.Fragment>
      <SideDrawer className="drawer open history-drawer" scrollbar="true">
        {displayHistory()}
      </SideDrawer>
      <BackDrop handleBackDrop={props.handleBackDrop} />
    </React.Fragment>
  );
};

export default History;
