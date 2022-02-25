const dotenv = require("dotenv");
dotenv.config({ path: "./.env" });
const express = require("express");
const app = express();
const port = process.env.PORT;
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

const employeeRoutes = require('./routes/employee.routes')

app.use("/employee", employeeRoutes);

app.get("/", (req, res) => {
  res.send("Welcome");
});

app.listen(port, () => {
    console.log(`Server is Listening at port ${port} `);
  });
  