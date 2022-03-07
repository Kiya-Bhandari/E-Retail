import React, { useEffect, useState } from "react";
import Base from "../component/common/Base";
import { Container, Row, Table, Col } from "react-bootstrap";
import { getFilterProducts, getSearchProduct } from ".././api/product/index";
import { addToCart } from "../api/cart/index";
import { getAllCategories } from "../api/category/index";
import FormSelect from "../component/form/FormSelect";
import FormButton from "../component/form/FormButton";
import Pagination from "../component/table/Pagination";
import TableLoading from "../component/table/TableLoading";
import { isAuthenticated } from "../api/user/auth";
import { useCookies } from "react-cookie";
import { SnackbarProvider, useSnackbar } from "notistack";
import { makeStyles } from "@material-ui/core/styles";

const useStyles = makeStyles((theme) => ({
  success: {
    color: "#155724",
    backgroundColor: "#d4edda",
    borderColor: "#c3e6cb",
  },
  error: {
    color: "#721c24",
    backgroundColor: "#f8d7da",
    borderColor: "#f5c6cb",
  },
}));

const Home = () => {
  const [cookies] = useCookies(["device"]);
  const [page, setPage] = useState(1);
  const [data, setData] = useState({
    count: 0,
    next: null,
    previous: null,
  });
  const [products, setProducts] = useState([]);
  const [categories, setCategories] = useState([]);
  const [category, setCategory] = useState("All");
  const [values, setValues] = useState({
    error: false,
    errMessage: "",
    success: false,
    succMessage: "",
  });
  const [reload, setReload] = useState(false);
  const [isSearch, setIsSearch] = useState(false);
  const [searchValue, setSearchValue] = useState("");
  const { enqueueSnackbar } = useSnackbar();

  useEffect(() => {
    getAllCategories().then((data) => {
      if (data) {
        // console.log("categories:", data);
        setCategories(data.results);
        setReload(!reload);
      }
    });
  }, []);

  const filterProducts = () => {
    getFilterProducts(category, page).then((data) => {
      if (data) {
        // console.log("products:", data);
        setData({
          count: data.count,
          next: data.next,
          prev: data.previous,
        });
        setProducts(data.results);
      }
    });
  };

  const searchProduct = (page, searchValue) => {
    getSearchProduct(page, searchValue).then((data) => {
      if (data) {
        // console.log("data search : ", data);
        setData({
          count: data.count,
          next: data.next,
          prev: data.previous,
        });
        setProducts(data.results);
      }
    });
  };

  useEffect(() => {
    if (isSearch) {
      searchProduct(page, searchValue);
    } else {
      filterProducts();
    }
  }, [category, page]);

  const handlePageClick = (e) => {
    const selectedPage = e.selected + 1;
    setPage(selectedPage);
  };

  const handleChange = () => (event) => {
    setCategory(event.target.value);
    if (isSearch) {
      setIsSearch(false);
    }
    setPage(1);
    if (page === 1) {
      filterProducts();
    }
  };

  const handleSearchChange = (searchValue) => {
    // console.log("search : ", searchValue);
    if (isSearch !== true) setIsSearch(true);
    setSearchValue(searchValue);
    searchProduct(page, searchValue);
  };

  const handleSuccess = (succMessage) => {
    enqueueSnackbar(succMessage, {
      variant: "success",
      autoHideDuration: 1000,
    });
  };

  const handleError = (errMessage) => {
    enqueueSnackbar(errMessage, {
      variant: "error",
      autoHideDuration: 1000,
    });
  };

  const handleCart = (product) => {
    const userId = isAuthenticated() && isAuthenticated().user.id;

    let item = {
      product_id: product.id,
      name: product.name,
      authData: {
        device: cookies.device,
      },
    };
    if (userId) item.authData["userId"] = userId;

    addToCart(item).then((data) => {
      if (data && data.success) {
        setValues({ ...values, success: true, succMessage: data.success });
        handleSuccess(data.success);
        setReload(!reload);
      } else {
        setValues({ ...values, error: true, errMessage: data.error });
        handleError(data.error);
      }
    });
  };

  const displaySearch = () => {
    return (
      <FormSelect
        label="Search By Category"
        className="text-right"
        onChange={handleChange("category")}
      >
        <option>All</option>
        {categories.map((category, index) => (
          <option key={index}>{category.name}</option>
        ))}
      </FormSelect>
    );
  };
  const displayProducts = () => {
    return (
      <React.Fragment>
        <div>
          <Table striped bordered responsive>
            <thead>
              <tr>
                <th>Preview</th>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Status</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              {products !== undefined && products.length > 0 ? (
                products.map((product) => {
                  return (
                    <tr key={product.id}>
                      <td>
                        <img
                          src={product.image}
                          width="50px"
                          height="50px"
                          alt={product.name}
                        />
                      </td>
                      <td>{product.name}</td>
                      <td>{product.description}</td>
                      <td>${product.price}</td>
                      <td>
                        {product.stock > 0 ? (
                          <strong className="available">Available</strong>
                        ) : (
                          <strong className="out-of-stock">Out of Stock</strong>
                        )}
                      </td>
                      <td>
                        <FormButton
                          variant="primary"
                          type="button"
                          disabled={product.stock === 0}
                          onClick={() => handleCart(product)}
                        >
                          Add to cart
                        </FormButton>
                      </td>
                    </tr>
                  );
                })
              ) : isSearch ? (
                <TableLoading
                  variant="secondary"
                  colSpan="11"
                  tableText="Not Found"
                />
              ) : (
                <TableLoading
                  variant="secondary"
                  colSpan="11"
                  tableText="Loading..."
                />
              )}
            </tbody>
          </Table>
          <Pagination
            pageCount={data.count / 4}
            forcePage={page - 1}
            onPageChange={handlePageClick}
            marginPagesDisplayed={1}
            pageRangeDisplayed={1}
          />
        </div>
      </React.Fragment>
    );
  };

  return (
    <Base reload={reload} handleSearchChange={handleSearchChange}>
      <Container fluid className="px-5 product-search">
        <Row>
          <Col lg={12} md={12} sm={12} xs={12}>
            <Row>
              <Col lg={4} md={4} sm xs></Col>
              <Col lg={4} md={4} sm xs></Col>
              <Col lg={4} md={4} sm={12} xs={12}>
                {displaySearch()}
              </Col>
            </Row>
          </Col>
        </Row>
      </Container>
      <Container fluid className="px-5">
        <Row>
          <Col lg={12} md={12} sm={12} xs={12}>
            {displayProducts()}
          </Col>
        </Row>
      </Container>
    </Base>
  );
};

const Snackbar = () => {
  const classes = useStyles();

  return (
    <SnackbarProvider
      anchorOrigin={{ vertical: "top", horizontal: "right" }}
      hideIconVariant
      classes={{ variantSuccess: classes.success, variantError: classes.error }}
      maxSnack={3}
    >
      <Home />
    </SnackbarProvider>
  );
};

export default Snackbar;
