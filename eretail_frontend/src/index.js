import React from "react";
import ReactDOM from "react-dom";
import "./style/app.css";
import Routes from "./route/Routes";
import { CookiesProvider } from "react-cookie";
import "bootstrap/dist/css/bootstrap.css";

ReactDOM.render(
  <CookiesProvider>
    <Routes />
  </CookiesProvider>,
  document.getElementById("root")
);
