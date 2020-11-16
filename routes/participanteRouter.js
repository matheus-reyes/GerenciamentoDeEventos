const express = require("express");
const router = express.Router();

const controller = require("../controllers/ParticipanteController");

router.get("/inicioParticipante", controller.inicio);

module.exports = router;