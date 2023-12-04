var database = require("../database/config")


function listar_pontuacao() {

    var instrucao = `
    select nome, pontuacao from quiz join usuario on fkusuario = idusuario order by pontuacao desc limit 3;
    `;
    console.log("Executando a instrução SQL pegarid: \n" + instrucao);
    return database.executar(instrucao);
}

function insert_pontuacao(id_do_usuario_sendo_puxada, pontuacao_usuario_sendo_puxada) {

    console.log(`teste`)
    // Insira exatamente a query do banco aqui, lembrando da nomenclatura exata nos valores
    //  e na ordem de inserção dos dados.
    var instrucao = `
        INSERT INTO quiz (pontuacao, fkusuario) VALUES ('${pontuacao_usuario_sendo_puxada}', 
        '${id_do_usuario_sendo_puxada}');
    `;
    console.log("Executando a instrução SQL cadastrar: \n" + instrucao);
    return database.executar(instrucao);
}

module.exports = {
    listar_pontuacao,
    insert_pontuacao
};