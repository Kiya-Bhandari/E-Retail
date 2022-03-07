import { API } from "../../backend";

export const totalProduct = (authData) => {
  return fetch(
    `${API}order/cart-total-product/?device=${authData.device}&userId=${authData.userId}`,
    {
      method: "GET",
    }
  )
    .then((response) => {
      return response.json();
    })
    .catch((err) => console.log(err));
};

export const myCart = (authData) => {
  return fetch(
    `${API}order/get-items/?device=${authData.device}&userId=${authData.userId}`,
    {
      method: "GET",
    }
  )
    .then((response) => {
      return response.json();
    })
    .catch((err) => console.log(err));
};

export const addToCart = (item) => {
  // const token = isAuthenticated() && isAuthenticated().token;

  return fetch(`${API}order/add-to-cart/`, {
    method: "POST",
    headers: {
      // Authorization: `token ${token}`,
      Accept: "application/json",
      "Content-Type": "application/json",
    },
    body: JSON.stringify(item),
  })
    .then((response) => {
      return response.json();
    })
    .catch((err) => console.log(err));
};

export const increaseQuantity = (cart_product_id) => {
  return fetch(`${API}order/increase-quantity/`, {
    method: "POST",
    headers: {
      //   Authorization: `token ${window.sessionStorage.getItem("userdetail")}`,
      Accept: "application/json",
      "Content-Type": "application/json",
    },
    body: JSON.stringify({ cart_product_id: cart_product_id }),
  })
    .then((response) => {
      return response.json();
    })
    .catch((err) => console.log(err));
};

export const decreaseQuantity = (cart_product_id) => {
  return fetch(`${API}order/decrease-quantity/`, {
    method: "POST",
    headers: {
      //   Authorization: `token ${window.sessionStorage.getItem("userdetail")}`,
      Accept: "application/json",
      "Content-Type": "application/json",
    },
    body: JSON.stringify({ cart_product_id: cart_product_id }),
  })
    .then((response) => {
      return response.json();
    })
    .catch((err) => console.log(err));
};

export const removeProduct = (cart_product_id) => {
  return fetch(`${API}order/remove-item/`, {
    method: "POST",
    headers: {
      //   Authorization: `token ${window.sessionStorage.getItem("userdetail")}`,
      Accept: "application/json",
      "Content-Type": "application/json",
    },
    body: JSON.stringify({ cart_product_id: cart_product_id }),
  })
    .then((response) => {
      return response.json();
    })
    .catch((err) => console.log(err));
};
