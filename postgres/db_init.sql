-- Creazione della tabella (se non esiste già)
CREATE TABLE IF NOT EXISTS rubrica (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cognome VARCHAR(100) NOT NULL,
    telefono VARCHAR(15),
    email VARCHAR(100),
    indirizzo TEXT
);

-- Inserimento di 5 record di esempio
INSERT INTO rubrica (nome, cognome, telefono, email, indirizzo) VALUES
('Mario', 'Rossi', '1234567890', 'mario.rossi@example.com', 'Via Roma 1, Milano'),
('Luca', 'Bianchi', '0987654321', 'luca.bianchi@example.com', 'Piazza Duomo 5, Firenze'),
('Giulia', 'Verdi', '1112223333', 'giulia.verdi@example.com', 'Corso Italia 10, Torino'),
('Francesca', 'Neri', '4445556666', 'francesca.neri@example.com', 'Viale della Repubblica 20, Napoli'),
('Alessandro', 'Gialli', '7778889999', 'alessandro.gialli@example.com', 'Largo Europa 15, Bologna');
