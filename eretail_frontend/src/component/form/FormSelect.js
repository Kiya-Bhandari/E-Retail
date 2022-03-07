import React from "react";
import Form from "react-bootstrap/Form";

const FormSelect = (props) => {
  return (
    <Form.Group className={props.className}>
      <Form.Label>{props.label}</Form.Label>
      <Form.Control
        as="select"
        placeholder={props.placeholder}
        onChange={props.onChange}
      >
        {props.children}
      </Form.Control>
    </Form.Group>
  );
};

export default FormSelect;
