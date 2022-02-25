var database_connection = require("../config/db.config");

var Employee = function (employee) {
  this.id = employee.id;
  this.name = employee.name;
  this.email = employee.email;
  this.mobile = employee.mobile;
  this.date = new Date();
  this.category = employee.category;
  this.profile_picture = employee.profile_picture;
};

Employee.getAllEmployeesData = (result) => {
  database_connection.query("select * from employees", (err, res) => {
    if (err) {
      console.log("Error while fetching employees!", err);
      result(err, "");
    } else {
      console.log("Employees fetch successfully!");
      result("", res);
    }
  });
};

Employee.getSingleEmployeeData = (id, result) => {
  database_connection.query(
    `Select * from employees where id = ${id}`,
    (err, res) => {
      if (err) {
        console.log("Error while fetching employee data by id", err);
        result(err, "");
      } else {
        console.log("Employees fetch successfully!");
        result("", res);
      }
    }
  );
};

Employee.createNewEmployee = (employeeReqData, result) => {
  console.log("dnbvjbhhhhhhhhhhhhhh");
  database_connection.query(
    "insert into employees set ?",
    employeeReqData,
    (err, res) => {
      if (err) {
        console.log("Error while inserting data!");
        result(err, "");
      } else {
        console.log("Employee created successfully!");
        result("", res);
      }
    }
  );
};

Employee.updateExistingEmployee = (id, employeeReqData, result) => {
  database_connection.query(
    "update employees set name=?,email=?,mobile=?,date=?,category=?,profile_picture=? where id =? ",
    [
      employeeReqData.name,
      employeeReqData.email,
      employeeReqData.mobile,
      employeeReqData.date,
      employeeReqData.category,
      employeeReqData.profile_picture,
      id,
    ],
    (err, res) => {
      if (err) {
        console.log("Error while data inserting fr the update!");
        result(err, "");
      } else {
        console.log("Successfully data Updated!");
        result("", res);
      }
    }
  );
};

Employee.deleteEmployee = (id, result) => {
  database_connection.query(
    "delete from employees where id=?",
    [id],
    (err, res) => {
      if (err) {
        console.log("Error while Deleting data!");
        result(err, "");
      } else {
        console.log("Employee Delete successfully!");
        result("", res);
      }
    }
  );
};

module.exports = Employee;
