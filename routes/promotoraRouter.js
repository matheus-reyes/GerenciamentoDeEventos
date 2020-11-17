const express = require("express");
const router = express.Router();

const controller = require("../controllers/PromotoraController");

router.get("/inicioPromotora", controller.inicio);
router.get("/eventosPromotora", controller.eventosPromotora);
router.get("/criarEventoPromotora", controller.criarEventoPromotora);
router.get("/contaPromotora", controller.contaPromotora);

module.exports = router;