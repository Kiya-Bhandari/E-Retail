import React, { useState } from "react";
import Base from "../component/common/Base";
import { signup } from "../api/user/auth";
import { Form } from "react-bootstrap";
import FormInput from "../component/form/FormInput";
import FormButton from "../component/form/FormButton";
import FormContainer from "../component/form/FormContainer";
import { successMessage, errorMessage } from "../messages/helper";

const Register = () => {
  const [values, setValues] = useState({
    username: "",
    email: "",
    password: "",
    password2: "",
    error: false,
    errMessage: "",
    success: false,
    succMessage: "",
  });

  const {
    username,
    email,
    password,
    password2,
    success,
    succMessage,
    error,
    errMessage,
  } = values;

  const setSuccess = (value) => {
    setValues({ ...values, success: value });
  };

  const setError = (value) => {
    setValues({ ...values, error: value });
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    setValues({
      ...values,
      error: false,
    });

    signup({ username, email, password, password2 }).then((data) => {
      if (data.username === username) {
        setValues({
          ...values,
          username: "",
          first_name: "",
          last_name: "",
          email: "",
          password: "",
          password2: "",
          error: false,
          errorMessage: "",
          success: true,
          succMessage: "User created successfully.",
        });
      } else {
        setValues({
          ...values,
          error: true,
          success: false,
          errMessage: data ? data.error[0] : "Some error occured later !!",
        });
      }
    });
  };
  const handleChange = (name) => (event) => {
    setValues({ ...values, error: false, [name]: event.target.value });
  };

  const registerForm = () => {
    return (
      <FormContainer className="px-5 py-3">
        <h4 style={{ textAlign: "center" }}>SIGN-UP-FORM</h4>
        {success && successMessage(succMessage, setSuccess, true, true)}
        {error && errorMessage(errMessage, setError)}
        <Form onSubmit={handleSubmit}>
          <FormInput
            type={"text"}
            label="Name"
            placeholder="Enter your name"
            value={username}
            required
            onChange={handleChange("username")}
          />
          <FormInput
            type={"text"}
            label="Email address"
            placeholder="Enter email"
            value={email}
            text="We'll never share your email with anyone else."
            required
            onChange={handleChange("email")}
          />
          <FormInput
            type={"password"}
            label="Password"
            placeholder="Password"
            value={password}
            required
            onChange={handleChange("password")}
          />
          <FormInput
            type={"password"}
            label="Confirm Password"
            placeholder="Re-type Password"
            value={password2}
            required
            onChange={handleChange("password2")}
          />
          <FormButton variant="primary" type="submit">
            Submit
          </FormButton>
        </Form>
      </FormContainer>
    );
  };
  return <Base footerPosition="position-fixed">{registerForm()}</Base>;
};

export default Register;
