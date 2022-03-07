import React from "react";
import Form from "react-bootstrap/Form";

const FormInput = (props) => {
  return (
    <Form.Group className="text-left">
      <Form.Label className="font-weight-bold">{props.label}</Form.Label>
      <Form.Control
        type={props.type}
        placeholder={props.placeholder}
        value={props.value}
        onChange={props.onChange}
        size={props.size}
        required={props.required}
        className={props.className}
      />
      <Form.Text className="text-muted">{props.text}</Form.Text>
    </Form.Group>
  );
};

export default FormInput;
