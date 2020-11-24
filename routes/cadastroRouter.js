const express = require("express");
const router = express.Router();

const controller = require("../controllers/CadastroController");

router.get("/cadastroParticipante", controller.cadastroParticipante);
router.get("/cadastroPromotora", controller.cadastroPromotora);
router.post("/cadastroParticipanteForm", controller.cadastroParticipanteForm);
router.post("/cadastroPromotoraForm", controller.cadastroPromotoraForm);

module.exports = router;