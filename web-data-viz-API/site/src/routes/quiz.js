var express = require("express");
var router = express.Router();

var quizController = require("../controllers/quizController");

//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js

router.post("/cadastro_pontuacao", function (req, res) {
    console.log(`teste2`)
    quizController.cadastro_pontuacao(req, res);
});
router.get("/listar_pontuacao", function (req, res) {
    quizController.listar_pontuacao(req, res);
});
module.exports = router;