const express = require("express");
const router = express.Router();

const controller = require("../controllers/CadastroController");

router.get("/cadastro", controller.cadastro);
router.post("/cadastroParticipante", controller.cadastroParticipante);
router.post("/cadastroPromotora", controller.cadastroPromotora);

module.exports = router;