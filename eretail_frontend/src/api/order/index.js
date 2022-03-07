import { API } from "../../backend";

export const createOrder = (token, orderData) => {
  const formData = new FormData();

  for (const name in orderData) {
    formData.append(name, orderData[name]);
  }

  return fetch(`${API}order/add-order/`, {
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

export const getOrder = (token) => {
  return fetch(`${API}order/get-order/${token}/`, {
    method: "GET",
    // headers: {
    //   // Authorization: `token ${token}`,
    // },
  })
    .then((response) => {
      return response.json();
    })
    .catch((err) => console.log(err));
};
