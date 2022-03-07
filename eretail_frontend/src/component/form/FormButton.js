import React from "react";
import Button from "react-bootstrap/Button";

const FormButton = (props) => {
  return (
    <div className="text-center">
      <Button
        variant={props.variant}
        type={props.type}
        className={`${props.className}`}
        size={props.size}
        onClick={props.onClick}
        disabled={props.disabled}
      >
        {props.children}
      </Button>
    </div>
  );
};

export default FormButton;
