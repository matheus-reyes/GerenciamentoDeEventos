const express = require("express");
const router = express.Router();

const controller = require("../controllers/PromotoraController");

router.get("/inicioPromotora", controller.inicio);

module.exports = router;