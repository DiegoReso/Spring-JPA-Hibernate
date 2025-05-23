INSERT INTO tb_user (name, email, phone, password) VALUES ('João Silva', 'joao.silva@email.com', '2199999999', 'senha123');
INSERT INTO tb_user (name, email, phone, password) VALUES ('Maria Souza', 'maria.souza@email.com', '1188888888', 'mypass');
INSERT INTO tb_user (name, email, phone, password) VALUES ('Carlos Oliveira', 'carlos.oliveira@email.com', '3177777777', 'secret');
INSERT INTO tb_user (name, email, phone, password) VALUES ('Ana Pereira', 'ana.pereira@email.com', '4166666666', 'secure1');
INSERT INTO tb_user (name, email, phone, password) VALUES ('Ricardo Gomes', 'ricardo.gomes@email.com', '5155555555', 'testpass');
INSERT INTO tb_user (name, email, phone, password) VALUES ('Fernanda Costa', 'fernanda.costa@email.com', '6144444444', 'strongpwd');
INSERT INTO tb_user (name, email, phone, password) VALUES ('Pedro Rodrigues', 'pedro.rodrigues@email.com', '7133333333', 'mysecret');
INSERT INTO tb_user (name, email, phone, password) VALUES ('Juliana Almeida', 'juliana.almeida@email.com', '8122222222', 'password');
INSERT INTO tb_user (name, email, phone, password) VALUES ('Lucas Martins', 'lucas.martins@email.com', '9111111111', 'simple1');
INSERT INTO tb_user (name, email, phone, password) VALUES ('Patrícia Nunes', 'patricia.nunes@email.com', '2700000000', 'another');

INSERT INTO tb_order (moment, order_status, client_id) VALUES ('2025-05-13T19:00:00Z', 1, 1);
INSERT INTO tb_order (moment, order_status, client_id) VALUES ('2025-05-13T19:05:30Z', 2, 2);
INSERT INTO tb_order (moment, order_status, client_id) VALUES ('2025-05-13T19:10:45Z', 2, 3);
INSERT INTO tb_order (moment, order_status, client_id) VALUES ('2025-05-13T19:15:15Z', 3, 1);
INSERT INTO tb_order (moment, order_status, client_id) VALUES ('2025-05-13T19:20:00Z', 4, 4);
INSERT INTO tb_order (moment, order_status, client_id) VALUES ('2025-05-13T19:25:20Z', 5, 2);
INSERT INTO tb_order (moment, order_status, client_id) VALUES ('2025-05-13T19:30:50Z', 1, 5);
INSERT INTO tb_order (moment, order_status, client_id) VALUES ('2025-05-13T19:35:05Z', 2, 3);
INSERT INTO tb_order (moment, order_status, client_id) VALUES ('2025-05-13T19:40:30Z', 5, 6);
INSERT INTO tb_order (moment, order_status, client_id) VALUES ('2025-05-13T19:45:00Z', 4, 10);

INSERT INTO tb_category (name) VALUES ('Electronics');
INSERT INTO tb_category (name) VALUES ('Books');
INSERT INTO tb_category (name) VALUES ('Clothing');
INSERT INTO tb_category (name) VALUES ('Home & Kitchen');
INSERT INTO tb_category (name) VALUES ('Sports & Outdoors');
INSERT INTO tb_category (name) VALUES ('Beauty & Personal Care');
INSERT INTO tb_category (name) VALUES ('Toys & Games');
INSERT INTO tb_category (name) VALUES ('Automotive');
INSERT INTO tb_category (name) VALUES ('Health & Household');
INSERT INTO tb_category (name) VALUES ('Tools & Home Improvement');

INSERT INTO tb_product (name, description, price, img_url) VALUES ('Smart TV LED 50" 4K', 'Tela grande com cores vibrantes e resolução Ultra HD.', 2299.90, 'https://example.com/tv50.jpg');
INSERT INTO tb_product (name, description, price, img_url) VALUES ('Notebook Core i5 8GB RAM 256GB SSD', 'Ideal para trabalho e estudo, rápido e eficiente.', 2799.00, 'https://example.com/notebooki5.jpg');
INSERT INTO tb_product (name, description, price, img_url) VALUES ('Smartphone Android 128GB', 'Câmera de alta resolução e bateria de longa duração.', 1599.50, 'https://example.com/smartphone128.jpg');
INSERT INTO tb_product (name, description, price, img_url) VALUES ('Jogo de Panelas Antiaderente 5 Peças', 'Cozinhe com praticidade e sem grudar.', 199.99, 'https://example.com/panelas5.jpg');
INSERT INTO tb_product (name, description, price, img_url) VALUES ('Livro "O Senhor dos Anéis"', 'Edição especial da clássica obra de Tolkien.', 59.90, 'https://example.com/lotr.jpg');
INSERT INTO tb_product (name, description, price, img_url) VALUES ('Tênis Esportivo Masculino', 'Confortável para corrida e atividades físicas.', 249.75, 'https://example.com/tenis.jpg');
INSERT INTO tb_product (name, description, price, img_url) VALUES ('Cafeteira Elétrica Programável', 'Prepare seu café fresquinho a qualquer hora.', 129.00, 'https://example.com/cafeteira.jpg');
INSERT INTO tb_product (name, description, price, img_url) VALUES ('Fone de Ouvido Bluetooth Sem Fio', 'Liberdade e qualidade de som para o seu dia a dia.', 179.80, 'https://example.com/fonebluetooth.jpg');
INSERT INTO tb_product (name, description, price, img_url) VALUES ('Cadeira de Escritório Ergonômica', 'Conforto e suporte para longas horas de trabalho.', 399.90, 'https://example.com/cadeiraescritorio.jpg');
INSERT INTO tb_product (name, description, price, img_url) VALUES ('Tablet Android 10" 64GB', 'Ideal para leitura, vídeos e navegação na web.', 899.00, 'https://example.com/tablet10.jpg');

INSERT INTO tb_product_category (product_id, category_id) VALUES (1, 3);
INSERT INTO tb_product_category (product_id, category_id) VALUES (2, 8);
INSERT INTO tb_product_category (product_id, category_id) VALUES (3, 1);
INSERT INTO tb_product_category (product_id, category_id) VALUES (3, 4);
INSERT INTO tb_product_category (product_id, category_id) VALUES (4, 9);
INSERT INTO tb_product_category (product_id, category_id) VALUES (5, 5);
INSERT INTO tb_product_category (product_id, category_id) VALUES (6, 2);
INSERT INTO tb_product_category (product_id, category_id) VALUES (7, 10);
INSERT INTO tb_product_category (product_id, category_id) VALUES (8, 6);
INSERT INTO tb_product_category (product_id, category_id) VALUES (9, 7);

INSERT INTO tb_order_item (order_id, product_id, quantity, price) VALUES (1, 1, 2, 2299.90);
INSERT INTO tb_order_item (order_id, product_id, quantity, price) VALUES (1, 5, 1, 59.90);
INSERT INTO tb_order_item (order_id, product_id, quantity, price) VALUES (2, 2, 1, 2799.00);
INSERT INTO tb_order_item (order_id, product_id, quantity, price) VALUES (3, 3, 3, 1599.50);
INSERT INTO tb_order_item (order_id, product_id, quantity, price) VALUES (4, 4, 2, 199.99);
INSERT INTO tb_order_item (order_id, product_id, quantity, price) VALUES (5, 6, 1, 249.75);
INSERT INTO tb_order_item (order_id, product_id, quantity, price) VALUES (6, 7, 1, 129.00);
INSERT INTO tb_order_item (order_id, product_id, quantity, price) VALUES (7, 8, 2, 179.80);
INSERT INTO tb_order_item (order_id, product_id, quantity, price) VALUES (8, 9, 1, 399.90);
INSERT INTO tb_order_item (order_id, product_id, quantity, price) VALUES (9, 10, 1, 899.00);

INSERT INTO tb_payment (order_id, moment) VALUES (1, '2025-05-13T19:00:00Z');
INSERT INTO tb_payment (order_id, moment) VALUES (2, '2025-05-13T22:05:30Z');
INSERT INTO tb_payment (order_id, moment) VALUES (3, '2025-05-13T19:10:45Z');
INSERT INTO tb_payment (order_id, moment) VALUES (4, '2025-05-13T19:15:15Z');
INSERT INTO tb_payment (order_id, moment) VALUES (5, '2025-05-13T19:20:00Z');
INSERT INTO tb_payment (order_id, moment) VALUES (6, '2025-05-13T19:25:20Z');
INSERT INTO tb_payment (order_id, moment) VALUES (7, '2025-05-13T19:30:50Z');
INSERT INTO tb_payment (order_id, moment) VALUES (8, '2025-05-13T19:35:05Z');
INSERT INTO tb_payment (order_id, moment) VALUES (9, '2025-05-13T19:40:30Z');
INSERT INTO tb_payment (order_id, moment) VALUES (10, '2025-05-13T19:45:00Z');