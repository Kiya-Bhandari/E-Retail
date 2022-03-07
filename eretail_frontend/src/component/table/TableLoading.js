import React from "react";
import { Alert } from "react-bootstrap";

const TableLoading = (props) => {
  return (
    <tr>
      <td colSpan={props.colSpan}>
        <Alert variant={props.variant}>{props.tableText}</Alert>
      </td>
    </tr>
  );
};

export default TableLoading;
