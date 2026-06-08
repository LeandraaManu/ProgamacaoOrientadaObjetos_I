CREATE DATABASE oficina;
USE oficina;

CREATE TABLE veiculo(
    id INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) NOT NULL UNIQUE,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL
);

CREATE TABLE peca(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    fabricante VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL
);

CREATE TABLE veiculo_peca(
    id_veiculo INT NOT NULL,
    id_peca INT NOT NULL,

    PRIMARY KEY(id_veiculo,id_peca),

    FOREIGN KEY(id_veiculo)
        REFERENCES veiculo(id)
        ON DELETE CASCADE,

    FOREIGN KEY(id_peca)
        REFERENCES peca(id)
        ON DELETE CASCADE
);