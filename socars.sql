-- Criação do banco de dados
CREATE DATABASE socars;
USE socars;

-- Tabela de Marcas
CREATE TABLE marca (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_marca VARCHAR(50) NOT NULL
);
-- Tabela de Categorias
CREATE TABLE categoria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL
);
-- Tabela de Modelos
CREATE TABLE modelo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_modelo VARCHAR(50) NOT NULL,
    ano INT,
    cor VARCHAR(30),
    preco DECIMAL(10,2),
    motor VARCHAR(50),
    descricao TEXT,
    imagem VARCHAR(255),
    id_marca INT,
    id_categoria INT,
    FOREIGN KEY (id_marca) REFERENCES marca(id),
    FOREIGN KEY (id_categoria) REFERENCES categoria(id)
);
CREATE TABLE usuario (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR (100),
    senha VARCHAR(255) NOT NULL,
    acesso ENUM('cliente', 'admin') NOT NULL
);

-- Tabela: marca
INSERT INTO marca (id, nome_marca) VALUES
(1, 'Volkswagen'),
(2, 'Honda'),
(3, 'Chevrolet'),
(4, 'Fiat'),
(5, 'Hyundai');

-- Tabela: categoria
INSERT INTO categoria (id, nome_categoria) VALUES
(1, 'Sedan'),
(2, 'Hatch'),
(3, 'SUV');

-- Tabela: modelo
INSERT INTO modelo (nome_modelo, ano, cor, preco, motor, descricao, imagem, id_marca, id_categoria) VALUES
-- Volkswagen
('Jetta', 2025, 'Preto', 165000.00, '2.0 TSI Turbo', 'O Jetta 2025 entrega sofisticação, desempenho e tecnologia. Com motor 2.0 turbo, oferece uma condução esportiva aliada ao máximo conforto, além de um design elegante e imponente.', 'uploads/jetta.jpg', 1, 1),
('T-Cross', 2025, 'Cinza', 145000.00, '1.4 TSI', 'O T-Cross 2025 é o SUV ideal para quem busca tecnologia, conforto e versatilidade. Equipado com motor TSI, entrega ótima performance com economia, além de itens de segurança de última geração.', 'uploads/tcross.jpg', 1, 3),
('Polo', 2025, 'Vermelho', 120000.00, '1.0 TSI', 'O Polo 2025 chega renovado, com visual esportivo, motor turbo eficiente e excelente conectividade. Ideal para quem busca um hatch ágil, econômico e completo.', 'uploads/polo.jpg', 1, 2),
('Golf', 2025, 'Azul', 135000.00, '1.4 TSI', 'O Golf 2025 alia desempenho, sofisticação e tecnologia de ponta. Ideal para quem busca esportividade com conforto.', 'uploads/golf.jpg', 1, 2),
('Nivus', 2025, 'Vermelho', 128000.00, '1.0 TSI', 'O Nivus 2025 entrega estilo SUV com desempenho ágil e moderno. Perfeito para a cidade.', 'uploads/nivus.jpg', 1, 3),
('Voyage', 2025, 'Branco', 88000.00, '1.6 Flex', 'O clássico Voyage 2025 combina economia, espaço e confiabilidade.', 'uploads/voyage.jpg', 1, 1),
('Taos', 2025, 'Cinza', 185000.00, '1.4 TSI', 'O Volkswagen Taos 2025 oferece performance, espaço interno e muita tecnologia em um SUV completo.', 'uploads/taos.jpg', 1, 3),

-- Honda
('Civic', 2025, 'Branco', 175000.00, '2.0 Flex', 'O Honda Civic 2025 combina sofisticação e esportividade. Com acabamento premium, tecnologias avançadas e desempenho robusto, é o sedã perfeito para quem não abre mão de conforto e segurança.', 'uploads/civic.jpg', 2, 1),
('HR-V', 2025, 'Prata', 160000.00, '1.5 Turbo', 'O novo HR-V 2025 oferece espaço, tecnologia e eficiência. Seu motor turbo garante performance ágil com baixo consumo, enquanto o interior proporciona conforto para toda a família.', 'uploads/hrv.jpg', 2, 3),
('Fit', 2025, 'Azul', 105000.00, '1.5 Flex', 'O Honda Fit 2025 é sinônimo de praticidade e versatilidade. Compacto por fora e espaçoso por dentro, perfeito para quem busca economia, conforto e muita funcionalidade no dia a dia.', 'uploads/fit.jpg', 2, 2),
('City', 2025, 'Cinza', 112000.00, '1.5 Flex', 'O Honda City 2025 combina elegância e eficiência em um sedã compacto premium.', 'uploads/city.jpg', 2, 1),
('WR-V', 2025, 'Preto', 109000.00, '1.5 Flex', 'Compacto e aventureiro, o WR-V 2025 é ideal para o trânsito urbano e pequenas aventuras.', 'uploads/wrv.jpg', 2, 3),
('City Hatch', 2025, 'Vermelho', 107000.00, '1.5 Flex', 'O City Hatch 2025 entrega versatilidade, espaço e tecnologia em um hatch moderno.', 'uploads/cityhatch.jpg', 2, 2),
('ZR-V', 2025, 'Branco', 195000.00, '2.0 Flex', 'SUV premium da Honda, o ZR-V 2025 oferece desempenho e sofisticação para quem exige mais.', 'uploads/zrv.jpg', 2, 3),

-- Chevrolet
('Cruze', 2025, 'Prata', 155000.00, '1.4 Turbo', 'O Chevrolet Cruze 2025 se destaca pelo equilíbrio entre desempenho, tecnologia e conforto. Seu motor turbo oferece agilidade, enquanto os itens de segurança e conectividade garantem uma experiência premium.', 'uploads/cruze.jpg', 3, 1),
('Tracker', 2025, 'Preto', 145000.00, '1.2 Turbo', 'O Tracker 2025 é um SUV compacto, moderno e cheio de tecnologia. Com motor turbo eficiente, oferece ótimo desempenho aliado a conforto, segurança e amplo espaço interno.', 'uploads/tracker.jpg', 3, 3),
('Onix', 2025, 'Branco', 95000.00, '1.0 Turbo', 'O Onix 2025 chega com design renovado, alta conectividade e excelente consumo. Um hatch pensado para quem busca economia, praticidade e tecnologia no dia a dia.', 'uploads/onix.jpg', 3, 2),
('Spin', 2025, 'Cinza', 98000.00, '1.8 Flex', 'O Chevrolet Spin 2025 é ideal para famílias, com amplo espaço interno e conforto.', 'uploads/spin.jpg', 3, 3),
('Montana', 2025, 'Vermelho', 118000.00, '1.2 Turbo', 'A picape Montana 2025 alia versatilidade e performance urbana com robustez.', 'uploads/montana.jpg', 3, 3),
('Onix Plus', 2025, 'Branco', 99000.00, '1.0 Turbo', 'O Onix Plus é o sedã ideal para quem busca economia e espaço com estilo.', 'uploads/onixplus.jpg', 3, 1),
('Cobalt', 2025, 'Azul', 102000.00, '1.8 Flex', 'Confortável e espaçoso, o Cobalt 2025 é ideal para quem prioriza segurança e praticidade.', 'uploads/cobalt.jpg', 3, 1),

-- Fiat
('Cronos', 2025, 'Prata', 95000.00, '1.3 Firefly', 'O Fiat Cronos 2025 é o sedã que une espaço, conforto e custo-benefício. Com linhas elegantes, motor eficiente e amplo porta-malas, é ideal para quem busca praticidade com estilo.', 'uploads/cronos.jpg', 4, 1),
('Pulse', 2025, 'Vermelho', 115000.00, '1.0 Turbo', 'O Fiat Pulse 2025 é o SUV compacto que surpreende. Com motor turbo, design arrojado e tecnologia embarcada, oferece uma condução prazerosa, segurança e muito estilo.', 'uploads/pulse.jpg', 4, 3),
('Argo', 2025, 'Azul', 85000.00, '1.3 Flex', 'O Argo 2025 é o hatch perfeito para quem quer economia e conforto. Com linhas modernas, interior bem acabado e tecnologias que facilitam o dia a dia, ele se destaca na categoria.', 'uploads/argo.jpg', 4, 2),
('Mobi', 2025, 'Prata', 68000.00, '1.0 Flex', 'O Fiat Mobi é o compacto ideal para o trânsito urbano: econômico, prático e moderno.', 'uploads/mobi.jpg', 4, 2),
('Fastback', 2025, 'Preto', 135000.00, '1.3 Turbo', 'Com visual arrojado, o Fastback 2025 é um SUV coupé que entrega esportividade e conforto.', 'uploads/fastback.jpg', 4, 3),
('Grand Siena', 2025, 'Branco', 78000.00, '1.0 Flex', 'Espaçoso e econômico, o Grand Siena 2025 é um sedã acessível e confiável.', 'uploads/gsiena.jpg', 4, 1);













