const express = require("express");
const router = express.Router();

const controller = require("../controllers/LoginController");

router.get("/login", controller.login);
router.post("/loginForm", controller.loginForm);

module.exports = router;