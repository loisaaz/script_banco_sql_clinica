-- show databases;
-- use universidade;
SHOW TABLES;

-- CUSTOMER TABLE
CREATE TABLE customer (

  id_customer INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  phone VARCHAR(15),
  email VARCHAR(50),
  cpf VARCHAR(11),
  age INT,
  treatment VARCHAR(100),
  note VARCHAR(100)
  
);

-- PROCEDURES TABLE
CREATE TABLE treatment (

  id_treatment INT PRIMARY KEY AUTO_INCREMENT,
  name_treatment VARCHAR(100),
  price DECIMAL(10, 2)
  
);

-- PROFESSIONALS TABLE
CREATE TABLE professional (

  id_professional INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  phone VARCHAR(15),
  email VARCHAR(50),
  specialty VARCHAR(50)
  
);

-- APPOINTMENTS TABLE 

CREATE TABLE appointment (
  
  id_appointment INT PRIMARY KEY AUTO_INCREMENT,
  id_customer INT NOT NULL,
  id_treatment INT NOT NULL,
  id_professional INT NOT NULL,
  appointment_date DATE NOT NULL,
  FOREIGN KEY (id_customer) REFERENCES customer(id_customer),
  FOREIGN KEY (id_treatment) REFERENCES treatment(id_treatment),
  FOREIGN KEY (id_professional) REFERENCES professional(id_professional)

);

-- SALES TABLE
CREATE TABLE sales (

  id_sale INT PRIMARY KEY AUTO_INCREMENT,
  id_appointment INT NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  payment_method VARCHAR(50),
  confirmed BOOLEAN DEFAULT FALSE,
  FOREIGN KEY (id_appointment) REFERENCES appointment(id_appointment)

);

INSERT INTO customer VALUES (
NULL, 'Adriana Lima', '(19)98765-4321', 'drilima@gmail.com', '45678912300', '45', 'Skinbooster', NULL);

INSERT INTO treatment VALUES(
NULL, 'Deep Skin Cleaning', '150.00');

INSERT INTO treatment VALUES(
NULL, 'Microneedling', '1000.00');

INSERT INTO treatment VALUES(
NULL, 'Skinbooster', '2000.00');

INSERT INTO treatment VALUES
(NULL, 'Laser Hair Removal', '250.00'), 
(NULL, 'CO2 Fractional Laser', '1000.00'),
(NULL, 'Dark Circles Treatment', '850.00'),
(NULL, 'Facial Filling', '1500.00'),
(NULL, 'Botox', '960.00'),
(NULL, 'Facial Harmonization', '5000.00'),
(NULL, 'Spot Lightening Treatment', '1800.00'),
(NULL, 'Cryolipolysis', '3000.00'),
(NULL, 'Radiofrequency', '400.00'),
(NULL, 'Focused Ultrasound', '5000.00'),
(NULL, 'Carboxytherapy', '550.00'),
(NULL, 'Endermotherapy', '800.00'),
(NULL, 'Lymphatic Drainage', '365.00'),
(NULL, 'PRP (Platelet Rich Plasma)', '2150.00'),
(NULL, 'High Definition Liposuction', '25000.00'),
(NULL, 'Rhinoplasty', '15000.00');

-- vizualizar os procedimentos por ordem alfabética
-- SELECT * FROM treatment ORDER BY name_treatment;

INSERT INTO customer VALUES 
(NULL, 'Luana Calvin', '(11)98661-4321', 'luana.calvin2005@email.com', '8224707890X', 25, 'Botox', 'First application'),
(NULL,'Mariana Vargas', '(21)91234-5569', 'mariana.vv12@gmail.com', '49775632102', 27, 'Microneedling', 'Sensitive skin, avoid sun exposure'),
(NULL,'Maria Eduarda Hoffmann', '(11)97654-3213', 'hoffmann.doarda@gmail.com', '45678912300', 35, 'High Definition Liposuction', 'Preoperative consultation'),
(NULL,'Chiyoko Inoue Ikegami', '(12)99876-5432', 'chiyokoiik24@hotmail.com', '78945612300', 23, 'Facial Harmonization','Looking for a natural effect'),
(NULL,'João Pereira', '(41)98564-2170', 'joao.pereirasou@email.com', '32165498700', 20, 'Laser Hair Removal', 'Treatment started, follow-up in 30 days'),
(NULL,'Amanda Nunes', '(61)97432-1650', 'amanda.anunes@gmail.com', '65478932100', 59, 'CO2 Fractional Laser', 'Spots on the face'),
(NULL,'Gabriel Santos', '(11)96234-1870', 'gabriel10santos@gmail.com', '95175384200', 30, 'Cryolipolysis', 'Desires abdominal reduction'),
(NULL,'Beatriz Almeida Clark', '(19)99123-4845', 'familiaclark@hotmail.com', '85214796300', 46, 'Lymphatic Drainage','Treatment for fluid retention'),
(NULL,'Hadiya Hadassah Kamau', '(21)95234-2636', 'hadiyakamax@gmail.com', '75395125800', 28, 'Rhinoplasty', NULL),
(NULL,'Caterina Castelo Van der Meer', '(11)93215-4789', 'julianavdmcastel@gmail.com', '14725836900', 31, 'Deep Skin Cleaning', '2º section');

INSERT INTO customer VALUES
(NULL, 'Regina Lewis Lima', '(19)98969-4090', 'lewisescritorio@gmail.com', '45659910300', 45, 'Rhinoplasty','post-operative consultation' ),
(NULL, 'Gabriela Antonelli Alencar', '(19)99262-9229', 'galencar1898@hotmail.com', '49677124333', 21, 'Deep Skin Cleaning', 'skin with rosacea'),
(NULL, 'Felipe Wong', '(11)98227-4420', 'felipepcad@gmail.com', '72467990030', 24, 'Facial Harmonization', 'Harmonize the lip area'),
(NULL, 'Valentina Gondolsh Pivovarova', '(11)795-2396', 'pivovarovacontato@hotmail.com', '41698610880', 18, 'Laser Hair Removal', '3º section');

UPDATE customer
SET phone = '(11)97795-2396'
WHERE id_customer = 15;

INSERT INTO professional VALUES 
(NULL, 'Sophia Schmidt', '(19)98934-3434', 'schmidtdermato@gmail.com', 'Dermatologist'),
(NULL, 'Helena Silva', '(19)98937-4333', 'helenabiomed@hotmail.com', 'Biomedical Aesthetician'),
(NULL, 'Sara Carson Ferreira', '(11)96552-7528', 'saracferreira@email.com', 'Dermatologist'),
(NULL, 'Lucas Oliveira', '(21)99999-0000', 'lucas.oliveira@clinic.com', 'Plastic Surgeon'),
(NULL, 'Marina Costa', '(11)98888-7777', 'marina.costa@clinic.com', 'Pharmaceutical Aesthetician'),
(NULL, 'Thiago Mendes', '(41)98765-4321', 'thiago.mendes@clinic.com', 'Plastic Surgeon'),
(NULL, 'Clara Almeida', '(31)91234-5678', 'clara.almeida@clinic.com', 'Dermatologist'),
(NULL, 'Eduardo Lima', '(21)99876-5432', 'eduardo.lima@clinic.com', 'Biomedical Aesthetician'),
(NULL, 'Renata Souza', '(11)97654-3210', 'renata.souza@clinic.com', 'Pharmaceutical Aesthetician'),
(NULL, 'Felipe Torres', '(19)98765-1234', 'felipe.torres@clinic.com', 'Plastic Surgeon'),
(NULL, 'Amanda Ribeiro', '(21)91234-5678', 'amanda.ribeiro@clinic.com', 'Dermatologist'),
(NULL, 'Bruno Ferreira', '(11)97654-9876', 'bruno.ferreira@clinic.com', 'Plastic Surgeon'),
(NULL, 'Camila Santos', '(19)98877-6655', 'camila.santos@clinic.com', 'Biomedical Aesthetician'),
(NULL, 'Diego Martins', '(31)99988-7766', 'diego.martins@clinic.com', 'Pharmaceutical Aesthetician'),
(NULL, 'Elisa Carvalho', '(41)95544-3322', 'elisa.carvalho@clinic.com', 'Dermatologist'),
(NULL, 'Patrícia Lopes', '(11)91122-3344', 'patricia.lopes@clinic.com', 'Dermatologist');

INSERT INTO appointment (id_customer, id_treatment, id_professional, appointment_date) VALUES
(1, 3, 1, '2025-06-10'), 
(2, 9, 2, '2025-06-12'),   
(3, 18, 4, '2025-06-15'), 
(4, 10, 5, '2025-06-20'), 
(5, 6, 6, '2025-06-22'),   
(6, 15, 7, '2025-06-25'), 
(7, 12, 8, '2025-06-27'),  
(8, 16, 9, '2025-06-29'),  
(9, 17, 10, '2025-07-01'), 
(10, 2, 11, '2025-07-03'), 
(11, 4, 12, '2025-07-05'), 
(12, 1, 13, '2025-07-07'), 
(13, 14, 14, '2025-07-09'),
(14, 8, 15, '2025-07-11'),
(15, 5, 16, '2025-07-20');


INSERT INTO sales (id_appointment, price, payment_method, confirmed) VALUES
(1, 2000.00, 'Credit Card', TRUE),
(2, 960.00, 'Cash', TRUE),
(3, 25000.00, 'Bank Transfer', FALSE),
(4, 5000.00, 'Credit Card', TRUE),
(5, 1000.00, 'Debit Card', TRUE),
(6, 2150.00, 'Credit Card', TRUE),
(7, 3000.00, 'Cash', FALSE),
(8, 800.00, 'Credit Card', TRUE),
(9, 365.00, 'Debit Card', TRUE),
(10, 1000.00, 'Credit Card', TRUE),
(11, 250.00, 'Cash', TRUE),
(12, 150.00, 'Debit Card', TRUE),
(13, 400.00, 'Credit Card', FALSE),
(14, 1500.00, 'Credit Card', TRUE),
(15, 250.00, 'Pix', TRUE);

SELECT id_professional AS ID,
       name AS NAME,
       phone AS PHONE,
       email AS EMAIL,
       specialty AS SPECIALITY
FROM professional
ORDER BY id_professional;


SELECT id_customer AS ID,
       name AS 'NAME CUSTOMER',
       phone AS PHONE,
       email AS EMAIL,
       age AS AGE,
       treatment AS TREATMENT,
       note AS NOTES
FROM customer
ORDER BY id_customer;


SELECT appointment.appointment_date AS DATA, 
       customer.name AS CUSTOMER, 
       treatment.name_treatment AS TREATMENT, 
       professional.name AS PROFESSIONAL 
FROM appointment 
JOIN customer ON appointment.id_customer = customer.id_customer
JOIN professional ON appointment.id_professional = professional.id_professional
JOIN treatment ON appointment.id_treatment = treatment.id_treatment
ORDER BY treatment.name_treatment;
-- mudar a ordem para data

SELECT 
    customer.name AS 'NAME CUSTOMER',
    appointment.appointment_date AS DATA,
    sales.price AS PRICE,
    sales.confirmed AS 'PAYMENTO PENDING'
FROM sales 
JOIN appointment ON sales.id_appointment = appointment.id_appointment 
JOIN customer ON appointment.id_customer = customer.id_customer 
WHERE sales.confirmed = FALSE
ORDER BY appointment.appointment_date;
-- clientes que não efetuaram o pagamento (false, 0)


SELECT customer.name AS CUSTOMER, 
       SUM(sales.price) AS 'TOTAL AMOUNT'
FROM sales
JOIN appointment ON sales.id_appointment = appointment.id_appointment
JOIN customer ON appointment.id_customer = customer.id_customer
GROUP BY customer.name;


SELECT 
    customer.name AS 'NAME CUSTOMER', 
    COUNT(appointment.id_appointment) AS 'TOTAL APPOINTMENTS'
FROM customer 
JOIN appointment ON customer.id_customer = appointment.id_customer
GROUP BY customer.name;




