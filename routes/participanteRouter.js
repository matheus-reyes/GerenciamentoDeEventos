const express = require("express");
const router = express.Router();

const controller = require("../controllers/ParticipanteController");

router.get("/inicioParticipante", controller.inicio);
router.get("/todosEventosParticipante", controller.todosEventosParticipante);
router.get("/eventosParticipante", controller.eventosParticipante);
router.get("/contaParticipante", controller.contaParticipante);

module.exports = router;