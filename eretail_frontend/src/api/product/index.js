import { API } from "../../backend";

export const getFilterProducts = (category, page) => {
  return fetch(`${API}product/${category}/?page=${page}`, {
    method: "GET",
    // credentials: "include",
  })
    .then((response) => {
      return response.json();
    })
    .catch((err) => console.log(err));
};

export const getSearchProduct = (page, searchProduct) => {
  console.log("pageee:", page);
  return fetch(
    `${API}product/searchProduct/byName/?page=${page}&search=${searchProduct}`,
    {
      method: "GET",
    }
  )
    .then((response) => {
      return response.json();
    })
    .catch((err) => console.log(err));
};
