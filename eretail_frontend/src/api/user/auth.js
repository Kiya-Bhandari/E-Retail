import { API } from "../../backend";
// import Cookies from "js-cookie";

export const signup = (user) => {
  return fetch(`${API}user/`, {
    method: "POST",
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
    body: JSON.stringify(user),
  })
    .then((response) => {
      return response.json();
    })
    .catch((err) => console.log(err));
};

export const signin = (user) => {
  const formData = new FormData();
  for (const name in user) {
    formData.append(name, user[name]);
  }

  return fetch(`${API}user/signin/`, {
    method: "POST",
    body: formData,
  })
    .then((response) => {
      console.log("SUCCESS", response);
      return response.json();
    })
    .catch((err) => console.log(err));
};

export const authenticate = (data, next) => {
  if (typeof window !== undefined) {
    window.sessionStorage.setItem("userdetail", JSON.stringify(data));

    next();
  }
};

export const isAuthenticated = () => {
  if (typeof window == undefined) {
    return false;
  }
  if (window.sessionStorage.getItem("userdetail")) {
    return JSON.parse(window.sessionStorage.getItem("userdetail"));
  } else {
    return false;
  }
};
