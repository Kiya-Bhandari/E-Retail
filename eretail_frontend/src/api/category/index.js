import { API } from "../../backend";

export const getAllCategories = () => {
  return fetch(`${API}category/`, {
    method: "GET",
    // credentials: "include",
  })
    .then((response) => {
      return response.json();
    })
    .catch((err) => console.log(err));
};
