-- 2502001164 - Marcelius Surya Wijaya
CREATE DATABASE redlock;
USE redlock;

CREATE TABLE IF NOT EXISTS users (
    ID INT PRIMARY KEY,
    Nama VARCHAR(255) NOT NULL,
    Alamat VARCHAR(255) NOT NULL,
    Jabatan VARCHAR(255) NOT NULL
);

INSERT INTO users (ID, Nama, Alamat, Jabatan) VALUES
(1, 'Marcelius', 'Jl. Sudirman No. 123, Jakarta', 'Manager'),
(2, 'Surya', 'Jl. Thamrin No. 456, Jakarta', 'Supervisor'),
(3, 'Wijaya', 'Jl. Gatot Subroto No. 789, Jakarta', 'Staff');
