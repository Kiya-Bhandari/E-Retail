import { Row, Col, Alert, Spinner } from "react-bootstrap";

export const successMessage = (
  message,
  setSuccess,
  link = false,
  dismissible = true,
  linkText = "Login",
  redirect = "/login"
) => {
  return (
    <Row>
      <Col>
        <Alert
          show={true}
          variant="success"
          onClose={() => setSuccess(false)}
          dismissible={dismissible}
        >
          {message}
          {link ? <Alert.Link href={redirect}>{linkText}</Alert.Link> : null}
        </Alert>
      </Col>
    </Row>
  );
};

export const errorMessage = (message, setError) => {
  return (
    <Row>
      <Col>
        <Alert
          show={true}
          variant="danger"
          onClose={() => setError(false)}
          dismissible
        >
          {message}
        </Alert>
      </Col>
    </Row>
  );
};

export const startLoader = () => {
  return (
    <div className="vertical-center">
      <Spinner animation="border" variant="primary" role="status"></Spinner>
    </div>
  );
};
