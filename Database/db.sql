CREATE DATABASE inventory;

USE inventory;

CREATE TABLE products (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  description VARCHAR(300),
  category VARCHAR(12) NOT NULL,
  price DECIMAL(6,2) NOT NULL,
  quantity BIGINT NOT NULL,
  createdAt DATETIME,
  updatedAt DATETIME
);

/* optional: insert some items manually */

INSERT INTO products (name, description, category, price, quantity, createdAt, updatedAt)
VALUES
  (
    'Headset Gamer HyperX',
    'Headset Gamer HyperX Cloud Stinger, Drivers 50mm, Múltiplas Plataformas',
    'Electronics',
    159.99,
    20,
    '2021-02-15 9:55:12',
    '2021-02-15 9:55:12'
  ),
  (
    'Aspirador de Pó',
    'Preto, Mapeamento IR 360º, Controle via Aplicativo, Google Assistant e Alexa - KBSF003',
    'Electronics',
    1349.99,
    150,
    '2021-02-15 9:55:12',
    '2021-02-15 9:55:12'
  ),
  (
    'Intel Core i5-10400F',
    '2.9GHz (4.3GHz Max Turbo), Cache 12MB, 6 Núcleos, 12 Threads, LGA 1200',
    'Electronics',
    699.99,
    150,
    '2021-02-15 9:55:12',
    '2021-02-15 9:55:12'
  ),
  (
    'Notebook Asus AMD Ryzen 5',
    '8GB RAM, SSD 256GB, 15,6, Radeon Vega 8, Linux, Cinza',
    'Electronics',
    2600.00,
    50,
    '2021-02-15 9:55:12',
    '2021-02-15 9:55:12'
  ),
  (
    'TV LG 55 Polegadas LED 4K',
    'UHD NanoCell, 4 HDMI, 2 USB, Quantum Dot, FreeSync, ThinQAI Google, Alexa, Preto',
    'Electronics',
    3699.99,
    2250,
    '2021-02-15 9:55:12',
    '2021-02-15 9:55:12'
  ),
  (
    'Motorola Moto G71',
    '5G, 6GB RAM, 128GB, Câmera Tripla 50MP, Octa Core, Tela 6.4, Verde',
    'Electronics',
    1599.00,
    40,
    '2021-02-15 9:55:12',
    '2021-02-15 9:55:12'
  ),
  (
    'SSD 240 GB Kingston A400',
    'SATA, Leitura: 500MB/s e Gravação: 350MB/s',
    'Accessories',
    132.99,
    5504,
    '2021-02-15 9:55:12',
    '2021-02-15 9:55:12'
  ),
  (
    'Fritadeira Air Fryer',
    'Sem Óleo Britânia Bella Cuccina BCFR02P 3L, 1300W, 127V, Antiaderente',
    'Electronics',
    289.99,
    45,
    '2021-02-15 9:55:12',
    '2021-02-15 9:55:12'
  ),
  (
    'Caixa de Som JBL Boombox',
    'Bluetooth, USB, 80W RMS, Preto',
    'Electronics',
    2879.99,
    15,
    '2021-02-15 9:55:12',
    '2021-02-15 9:55:12'
  ),
  (
    'Teclado Mecânico Gamer HyperX',
    'Alloy MKW100, RGB, Switch Red, Full Size, Layout US',
    'Accessories',
    229.99,
    150,
    '2021-02-15 9:55:12',
    '2021-02-15 9:55:12'
  ),
  (
    'HD Seagate 1TB BarraCuda',
    'HD Seagate 1TB BarraCuda, 3.5, SATA',
    'Accessories',
    249.99,
    1189,
    '2021-02-15 9:55:12',
    '2021-02-15 9:55:12'
  ),
  (
    'Cadeira Gamer Corsair',
    'TC70 Remix, Até 120Kg, Apoio de Braços 3D, Reclinável, Cilindro de Gás Classe 4',
    'Accessories',
    1099.99,
    220,
    '2021-02-15 9:55:12',
    '2021-02-15 9:55:12'
  ),
  (
    'Placa de Vídeo RTX 3060 Ti',
    'OC Galax NVIDIA GeForce, 8GB, GDDR6, LHR, DLSS, Ray Tracing, Preto',
    'Accessories',
    2899.99,
    150,
    '2021-02-15 9:55:12',
    '2021-02-15 9:55:12'
  );