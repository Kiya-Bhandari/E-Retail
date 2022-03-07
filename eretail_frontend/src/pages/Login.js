import React, { useState } from "react";
import Base from "../component/common/Base";
import { signin, authenticate, isAuthenticated } from "../api/user/auth";
import { Container, Form } from "react-bootstrap";
import FormInput from "../component/form/FormInput";
import FormButton from "../component/form/FormButton";
import FormContainer from "../component/form/FormContainer";
import { errorMessage } from "../messages/helper";

const Login = (props) => {
  const [values, setValues] = useState({
    email: "",
    password: "",
    error: false,
    errMessage: "",
    success: false,
    loading: false,
  });

  const { email, password, error, errMessage } = values;

  const setError = (value) => {
    setValues({ ...values, error: value });
  };

  const handleSubmit = (event) => {
    event.preventDefault();

    setValues({
      ...values,
      error: false,
      loading: true,
    });

    signin({ email, password }).then((data) => {
      if (data && data.user) {
        authenticate(data, () => {
          setValues({ ...values, error: false, loading: false });
        });
      } else {
        setValues({
          ...values,
          loading: false,
          error: true,
          errMessage: data ? data.error : "Some error occured later !!",
        });
      }
    });
  };
  const handleChange = (name) => (event) => {
    setValues({ ...values, error: false, [name]: event.target.value });
  };

  const performRedirect = () => {
    if (isAuthenticated()) {
      window.location.href = "/";
    }
  };

  const loginForm = () => {
    return (
      <FormContainer className="p-5">
        <h4 style={{ textAlign: "center" }}>LOGIN FORM</h4>
        {error && errorMessage(errMessage, setError)}
        <Form onSubmit={handleSubmit}>
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

          <FormButton variant="primary" type="submit">
            Login
          </FormButton>
        </Form>
      </FormContainer>
    );
  };

  return (
    <Base>
      {loginForm()}
      {performRedirect()}
    </Base>
  );
};

export default Login;
