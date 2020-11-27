const express = require("express");
const router = express.Router();

const controller = require("../controllers/PromotoraController");

router.get("/inicioPromotora", controller.inicio);
router.get("/eventosPromotora", controller.eventosPromotora);
router.get("/criarEventoPromotora", controller.criarEventoPromotora);
router.get("/contaPromotora", controller.contaPromotora);
router.post("/cadastroEvento", controller.cadastroEvento);
router.post("/editarEvento", controller.editarEvento);
router.post("/apagarEvento", controller.apagarEvento);
router.post("/editarPromotora", controller.editarPromotora);
router.post("/apagarPromotora", controller.apagarPromotora);

module.exports = router;