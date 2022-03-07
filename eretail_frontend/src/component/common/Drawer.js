import React from "react";
import { Nav } from "react-bootstrap";

const Drawer = (props) => {
  return (
    <Nav
      className={` ${props.className} ${
        props.scrollbar ? `scroll-drawer` : ``
      }`}
    >
      {props.children}
    </Nav>
  );
};

export default Drawer;
