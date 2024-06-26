var quizModel = require("../models/quizModel");

function cadastro_pontuacao(req, res) {
    console.log(`teste1`)
    // Crie uma variável que vá recuperar os valores do arquivo cadastro.html
    var id_do_usuario = req.body.idusuarioServer;
    var pontuacao_usuario = req.body.pontuacaoServer;


    // Passe os valores como parâmetro e vá para o arquivo usuarioModel.js
    quizModel.insert_pontuacao(id_do_usuario, pontuacao_usuario)
        .then(
            function (resultado) {
                res.json(resultado);
            }
        ).catch(
            function (erro) {
                console.log(erro);
                console.log(
                    "\nHouve um erro ao realizar o cadastro! Erro: ",
                    erro.sqlMessage
                );
                res.status(500).json(erro.sqlMessage);
            }
        );

}
function listar_pontuacao(req, res) {

    var exibir_pontuacao_usuario = req.params.pontuacao;

    quizModel.listar_pontuacao(exibir_pontuacao_usuario).then((resultado) => {
        res.status(200).json(resultado);
    });
}
module.exports = {
    cadastro_pontuacao,
    listar_pontuacao
}