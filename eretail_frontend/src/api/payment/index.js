import { API } from "../../backend";

export const getmeToken = (token) => {
  // console.log(API);
  return fetch(`${API}payment/get-token/`, {
    method: "GET",
    headers: {
      Authorization: `token ${token}`,
    },
  })
    .then((response) => {
      return response.json();
    })
    .catch((err) => console.log(err));
};

export const processPayment = (token, paymentInfo) => {
  const formData = new FormData();

  for (const name in paymentInfo) {
    formData.append(name, paymentInfo[name]);
  }

  return fetch(`${API}payment/process/`, {
    method: "POST",
    headers: {
      Authorization: `token ${token}`,
    },
    body: formData,
  })
    .then((response) => {
      return response.json();
    })
    .catch((err) => console.log(err));
};
