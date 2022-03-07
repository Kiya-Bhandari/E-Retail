import React from "react";
import Card from "react-bootstrap/Card";

const FormContainer = (props) => {
  return (
    <div className="d-flex justify-content-center p-3">
      <Card className={`form-container ${props.className}`}>
        {props.children}
      </Card>
    </div>
  );
};

export default FormContainer;
