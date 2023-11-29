CREATE DATABASE rede_social;

USE rede_social;


CREATE TABLE usuarios (
    id INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);


CREATE TABLE postagens (
    id INT PRIMARY KEY,
    usuario_id INT,
    postagem TEXT,
    data_postagem DATE,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);


CREATE TABLE comentarios (
    id INT PRIMARY KEY,
    postagem_id INT,
    usuario_id INT,
    comentario TEXT,
    data_comentario DATE,
    FOREIGN KEY (postagem_id) REFERENCES postagens(id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

CREATE TABLE amizades (
    usuario1_id INT,
    usuario2_id INT,
    data_amizade DATE,
    PRIMARY KEY (usuario1_id, usuario2_id),
    FOREIGN KEY (usuario1_id) REFERENCES usuarios(id),
    FOREIGN KEY (usuario2_id) REFERENCES usuarios(id)
);

INSERT INTO usuarios (id, nome) VALUES
(1, 'João'),
(2, 'Maria'),
(3, 'Carlos'),
(4, 'Ana'),
(5, 'Fernanda'),
(6, 'Ricardo'),
(7, 'Mariana'),
(8, 'Pedro'),
(9, 'Luiza'),
(10, 'Gabriel'),
(11, 'Sofia'),
(12, 'Lucas'),
(13, 'Larissa'),
(14, 'Eduardo'),
(15, 'Camila'),
(16, 'Gustavo'),
(17, 'Isabela'),
(18, 'Thiago'),
(19, 'Amanda'),
(20, 'Felipe'),
(21, 'Julia'),
(22, 'Daniel'),
(23, 'Carolina'),
(24, 'André'),
(25, 'Natália'),
(26, 'Alexandre'),
(27, 'Beatriz'),
(28, 'Renato'),
(29, 'Raquel'),
(30, 'Vinícius');

INSERT INTO postagens (id, usuario_id, postagem, data_postagem) VALUES
(1, 1, 'Hoje é um bom dia!', '2023-11-29'),
(2, 2, 'Bom dia, mundo!', '2023-11-28'),
(3, 1, 'Compartilhando novidades!', '2023-11-27'),
(4, 3, 'Aprendendo SQL!', '2023-11-26'),
(5, 4, 'Aventuras culinárias!', '2023-11-25'),
(6, 5, 'Dia produtivo no trabalho.', '2023-11-24'),
(7, 6, 'Finalmente de férias!', '2023-11-23'),
(8, 9, 'Novas experiências!', '2023-11-22'),
(9, 10, 'Reflexões sobre a vida.', '2023-11-21'),
(10, 11, 'Caminhada matinal revigorante.', '2023-11-20'),
(11, 12, 'Estudando para as provas finais.', '2023-11-19'),
(12, 13, 'Concerto incrível ontem à noite!', '2023-11-18'),
(13, 14, 'Dicas para uma alimentação saudável.', '2023-11-17'),
(14, 15, 'Passeio no parque com a família.', '2023-11-16'),
(15, 16, 'Novos projetos em andamento.', '2023-11-15'),
(16, 17, 'Preparativos para a viagem.', '2023-11-14'),
(17, 18, 'Aprendendo a tocar violão.', '2023-11-13'),
(18, 19, 'Sessão de cinema em casa.', '2023-11-12'),
(19, 20, 'Bom dia, mundo!', '2023-11-11'),
(20, 21, 'Dia de voluntariado.', '2023-11-10'),
(21, 22, 'Reunião importante no trabalho.', '2023-11-09'),
(22, 23, 'Aulas de dança começando!', '2023-11-08'),
(23, 24, 'Bom dia, mundo!', '2023-11-07'),
(24, 25, 'Leitura do livro do mês.', '2023-11-06'),
(25, 26, 'Novo visual, novo eu!', '2023-11-05'),
(26, 27, 'Passeio de bicicleta no parque.', '2023-11-04'),
(27, 28, 'Planejando as férias de verão.', '2023-11-03'),
(28, 29, 'Descobrindo novos hobbies.', '2023-11-02'),
(29, 30, 'Gratidão por mais um dia.', '2023-11-01'),
(30, 1, 'Bom dia, mundo!', '2023-11-28');

INSERT INTO comentarios (id, postagem_id, usuario_id, comentario, data_comentario) VALUES
(1, 3, 2, 'Concordo! É um ótimo dia!', '2023-11-29'),
(2, 3, 1, 'Bom dia para você também!', '2023-11-28'),
(3, 2, 3, 'Que bom que está gostando!', '2023-11-29'),
(4, 25, 2, 'Conte mais sobre as novidades!', '2023-11-27'),
(5, 2, 4, 'Mal posso esperar para ouvir!', '2023-11-27'),
(6, 1, 2, 'Que delícia! Compartilhe a receita.', '2023-11-25'),
(7, 4, 7, 'Parabéns pelo dia produtivo!', '2023-11-24'),
(8, 30, 8, 'Aproveite muito suas férias!', '2023-11-23'),
(9, 2, 9, 'Incrível! Conte mais!', '2023-11-22'),
(10, 1, 2, 'Reflexões profundas.', '2023-11-21'),
(11, 1, 4, 'Bela paisagem na caminhada!', '2023-11-20'),
(12, 1, 18, 'Deseje-me sorte nas provas!', '2023-11-19'),
(13, 1, 15, 'Quem mais foi ao concerto?', '2023-11-18'),
(14, 1, 2, 'Quais são as dicas?', '2023-11-17'),
(15, 1, 1, 'Como foi o passeio?', '2023-11-16'),
(16, 7, 3, 'Quais projetos você está desenvolvendo?', '2023-11-15'),
(17, 9, 3, 'Destino da viagem?', '2023-11-14'),
(18, 11, 3, 'Quais músicas está aprendendo no violão?', '2023-11-13'),
(19, 1, 11, 'Sobremesa favorita!', '2023-11-12'),
(20, 19, 20, 'Como foi o dia no voluntariado?', '2023-11-11'),
(21, 24, 21, 'Resultados da reunião?', '2023-11-10'),
(22, 2, 22, 'Aulas de dança divertidas?', '2023-11-09'),
(23, 2, 23, 'Quais mudanças no quarto?', '2023-11-08'),
(24, 2, 24, 'Recomendações do livro?', '2023-11-07'),
(25, 4, 25, 'Como se sentiu após a leitura?', '2023-11-06'),
(26, 5, 12, 'Gostaram do novo visual?', '2023-11-05'),
(27, 30, 4, 'Melhor lugar para passeio de bicicleta?', '2023-11-04'),
(28, 24, 3, 'Onde será a viagem de férias?', '2023-11-03'),
(29, 1, 29, 'Quais novos hobbies?', '2023-11-02'),
(30, 12, 30, 'O que te fez sentir grato hoje?', '2023-11-01');

INSERT INTO amizades (usuario1_id, usuario2_id, data_amizade)
VALUES
(10, 11, '2023-11-19'),
(12, 13, '2023-11-18'),
(14, 15, '2023-11-17'),
(16, 17, '2023-11-16'),
(18, 19, '2023-11-15'),
(20, 21, '2023-11-14'),
(22, 23, '2023-11-13'),
(24, 25, '2023-11-12'),
(26, 27, '2023-11-11'),
(28, 29, '2023-11-10'),
(30, 1, '2023-11-09'),
(2, 3, '2023-11-08'),
(4, 6, '2023-11-07'),
(8, 10, '2023-11-06'),
(12, 14, '2023-11-05'),
(16, 18, '2023-11-04'),
(20, 22, '2023-11-03'),
(24, 26, '2023-11-02'),
(28, 30, '2023-11-01'),
(3, 5, '2023-10-31'),
(7, 9, '2023-10-30'),
(11, 13, '2023-10-29'),
(15, 17, '2023-10-28'),
(19, 21, '2023-10-27'),
(23, 25, '2023-10-26'),
(27, 29, '2023-10-25'),
(1, 2, '2023-10-24'),
(5, 8, '2023-10-23'),
(9, 12, '2023-10-22'),
(13, 16, '2023-10-21');

-- RECUPERAÇÃO DE POSTAGENS
SELECT * 
FROM postagens 
WHERE usuario_id = (SELECT id FROM usuarios WHERE nome = 'João');

-- COMENTÁRIOS EM UMA POSTAGEM
SELECT postagem, comentario
FROM comentarios
INNER JOIN postagens
	ON comentarios.postagem_id = postagens.id
WHERE postagem LIKE '%Bom dia, mundo!%';

-- ESTATÍSTICAS
SELECT 
    u.nome AS usuario,
    COUNT(DISTINCT p.id) AS qtd_postagens,
    COUNT(DISTINCT c.id) AS qtd_comentarios
FROM usuarios u
LEFT JOIN postagens p ON u.id = p.usuario_id
LEFT JOIN comentarios c ON u.id = c.usuario_id
GROUP BY u.id, u.nome;

-- AMIZADES
SELECT *
FROM amizades
WHERE data_amizade >= (CURRENT_DATE - INTERVAL 30 DAY);

-- DETALHES DE UM USUÁRIO
SELECT 
    u.*,
    p.postagem,
    a.usuario2_id AS amigo_id,
    (SELECT nome FROM usuarios WHERE id = a.usuario2_id) AS nome_amigo
FROM usuarios u
LEFT JOIN postagens p ON u.ID = p.usuario_id
LEFT JOIN amizades a ON u.ID = a.usuario1_id OR u.id = a.usuario2_id
WHERE u.Nome = 'Maria';
