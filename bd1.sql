CREATE DATABASE clube_indie_db;

use clube_indie_db;

CREATE TABLE jogos(
    -> id int PRIMARY KEY AUTO_INCREMENT,
    -> titulo VARCHAR(100) NOT NULL,
    -> ano_lancamento DATE NOT NULL,
    -> preco DECIMAL(5,2) NOT NULL,
    -> estudio_id INT NOT NULL,
    -> categoria_id INT NOT NULL,
    -> CONSTRAINT fk_estudio_id FOREIGN KEY (estudio_id) REFERENCES estudio(id),
    -> CONSTRAINT fk_categoria_id FOREIGN KEY (categoria_id) REFERENCES categoria(id));

CREATE TABLE plataformas_lancam_jogos(
    -> plataformas_id INT NOT NULL,
    -> jogos_id INT NOT NULL,
    -> CONSTRAINT fk_plataformas_id FOREIGN KEY (plataformas_id) REFERENCES plataformas(id),
    -> CONSTRAINT fk_jogos_id FOREIGN KEY (jogos_id) REFERENCES jogos(id));

CREATE TABLE jogadores_compram_jogos(
    -> jogadores_id INT NOT NULL,
    -> jogos_id INT NOT NULL,
    -> data_compra DATETIME DEFAULT CURRENT_TIMESTAMP,
    -> preco_jogo_cobrado DECIMAL(5,2),
    -> CONSTRAINT fk_jogadores_id FOREIGN KEY (jogadores_id) REFERENCES jogadores(id),
    -> CONSTRAINT fk_games_id FOREIGN KEY (jogos_id) REFERENCES jogos(id));

SHOW TABLES;
+--------------------------+
| Tables_in_clube_indie_db |
+--------------------------+
| categoria                |
| estudio                  |
| jogadores                |
| jogadores_compram_jogos  |
| jogos                    |
| plataformas              |
| plataformas_lancam_jogos |
+--------------------------+