import React from "react";
import { Container } from "react-bootstrap";
import ReactPaginate from "react-paginate";
import "../../style/pagination.css";

const Pagination = (props) => {
  return (
    <Container fluid>
      <ReactPaginate
        pageCount={props.pageCount}
        onPageChange={props.onPageChange}
        forcePage={props.forcePage}
        breakLabel={"..."}
        previousLabel={"previous"}
        nextLabel={"next"}
        containerClassName={"pagination"}
        disabledClassName={"pagination__link--disabled"}
        activeClassName={"active"}
        marginPagesDisplayed={props.marginPagesDisplayed}
        pageRangeDisplayed={props.pageRangeDisplayed}
      />
    </Container>
  );
};

export default Pagination;
