CREATE TABLE clients(
account_id SERIAL,
name TEXT NOT NULL,
address TEXT NOT NULL,
phone_number CHAR(10) NOT NULL,
Email TEXT,
new_client BOOLEAN NOT NULL,
PRIMARY KEY(account_id)
);

INSERT INTO clients(name,address,phone_number,email,new_client)
VALUES('Olivia Johnson','7268 Walnutwood Court
Granger, IN 46530','2522179673','oliJo@gmail.com',FALSE);
INSERT INTO clients (name,address,phone_number,email,new_client)
VALUES('Megan Williams','988 53rd Street
Port Huron, IN 48060','2522179673','megwei@gmail.com',FALSE);
INSERT INTO clients (name,address,phone_number,email,new_client)
VALUES('Hugh Marks','1 South Brook Drive
Mount Holly, IN 08060','2522179973','MarksH@yahoo.com',TRUE);
INSERT INTO clients (name,address,phone_number,email,new_client)
VALUES('Mae Vazquez','1 South Brook Drive
Mount Holly, IN 08060','2522179073','Mvaz@gmail.com',FALSE);
INSERT INTO clients (name,address,phone_number,email,new_client)
VALUES('Chloe Wilson','680 Summerhouse Drive
Elkton, IN 21921','2522290857','wilsonc@roots.com',FALSE);
INSERT INTO clients (name,address,phone_number,email,new_client)
VALUES('Harvey Davenport','677 Summerhouse Drive
Elkton, IN 21921','2522870859','Harveyhar@outlook.com',TRUE);
INSERT INTO clients (name,address,phone_number,email,new_client)
VALUES('Julian Ali ','677 Summerhouse Drive
Elkton, IN 21921','2522560239','AliJ@gmail.com',FALSE);
INSERT INTO clients (name,address,phone_number,email,new_client)
VALUES('Emily Rodriguez','50 Bowman Street
Port Washington, IN 11050','2522134744','ERod@gmail.com',FALSE);
INSERT INTO clients (name,address,phone_number,email,new_client)
VALUES('Stephen Ramos','21 Glen Ridge Dr.
New Castle, IN 16101
','2552240728','RamoSteph@outlook.com',FALSE);
INSERT INTO clients (name,address,phone_number,email,new_client)
VALUES('Rick Grimes','21 Glen Ridge Dr.
New Castle, IN 16101
','2523247325','zombieHunt@gmail.com',TRUE);


CREATE TABLE pets(
patient_id SERIAL,
pet_name TEXT NOT NULL,
species TEXT NOT NULL,
breed TEXT NOT NULL,
sex char(1) NOT NULL,
weight INT NOT NULL,
previous_diagnosis TEXT,
dob DATE NOT NULL,
PRIMARY KEY(patient_id)
);

INSERT INTO pets(pet_name,dob,species,breed,sex,weight,previous_diagnosis)
VALUES('Basil',TO_DATE('01/01/2021','DD/MM/YYYY'),'Dog','boxer','f',45,'none');
INSERT INTO pets(pet_name,dob,species,breed,sex,weight,previous_diagnosis)
VALUES('Maniac',TO_DATE('03/2/2021','DD/MM/YYYY'),'cat','long-haired','m',13,'none');

INSERT INTO pets(pet_name,dob,species,breed,sex,weight,previous_diagnosis)
VALUES('Boss',TO_DATE('03/3/2021','DD/MM/YYYY'),'Cat','short-haired','m',25,'heart murmurs and obesity');

INSERT INTO pets(pet_name,dob,species,breed,sex,weight,previous_diagnosis)
VALUES('Titan',TO_DATE('04/4/2021','DD/MM/YYYY'),'Dog','pitbull','m',65,'none');

INSERT INTO pets(pet_name,dob,species,breed,sex,weight,previous_diagnosis)
VALUES('Sugar',TO_DATE('05/5/2021','DD/MM/YYYY'),'Mouse','Grey domestic','f',2.4,'none');

INSERT INTO pets(pet_name,dob,species,breed,sex,weight,previous_diagnosis)
VALUES('Levi',TO_DATE('05/12/2021','DD/MM/YYYY'),'dog','beagle','m',34,'none');

INSERT INTO pets(pet_name,dob,species,breed,sex,weight,previous_diagnosis)
VALUES('Spirit',TO_DATE('07/2/2018','DD/MM/YYYY'),'Cat','short-haired','f',14,'none');

INSERT INTO pets(pet_name,dob,species,breed,sex,weight,previous_diagnosis)
VALUES('Lucky',TO_DATE('08/2/2016','DD/MM/YYYY'),'Dog','Akita','m',67,'none');

INSERT INTO pets(pet_name,dob,species,breed,sex,weight,previous_diagnosis)
VALUES('Smiley',TO_DATE('09/2/2015','DD/MM/YYYY'),'Dog','Husky','f',70,'none');

INSERT INTO pets(pet_name,dob,species,breed,sex,weight,previous_diagnosis)
VALUES('Spice',TO_DATE('01/8/2012','DD/MM/YYYY'),'Cat','short-haired','f',25,'obesity');

INSERT INTO pets(pet_name,dob,species,breed,sex,weight,previous_diagnosis)
VALUES('Wookie',TO_DATE('10/7/2020','DD/MM/YYYY'),'Mouse','Grey domestic','m',2.8,'Blind');

INSERT INTO pets(pet_name,dob,species,breed,sex,weight,previous_diagnosis)
VALUES('Woody',TO_DATE('12/6/2021','DD/MM/YYYY'),'Mouse','white domestic','m',2.4,'none');

INSERT INTO pets(pet_name,dob,species,breed,sex,weight,previous_diagnosis)
VALUES('Aphrodite',TO_DATE('1/09/2018','DD/MM/YYYY'),'Cat','long-haired','f',14,'none');
INSERT INTO pets(pet_name,dob,species,breed,sex,weight,previous_diagnosis)
VALUES('Sultan',TO_DATE('04/2/2017','DD/MM/YYYY'),'Cat','Sphynx','m',13,'none');


CREATE TABLE appointments(
appointment_id SERIAL,
date DATE NOT NULL,
time TIME NOT NULL,
description TEXT NOT NULL,
patient_id INT NOT NULL,
doctor_id INT NOT NULL,
service_id INT,
PRIMARY KEY(appointment_id)

);

IINSERT INTO appointments(date,time,description)
VALUES(TO_DATE('03/2/2022','DD/MM/YYYY'),'09:00:00','Itching everywhere');
INSERT INTO appointments(date,time,description)
VALUES(TO_DATE('03/2/2022','DD/MM/YYYY'),'09:00:00','Annual Exam');
INSERT INTO appointments(date,time,description)
VALUES(TO_DATE('03/2/2022','DD/MM/YYYY'),'09:00:00','Possible ear infection');
INSERT INTO appointments(date,time,description)
VALUES(TO_DATE('03/2/2022','DD/MM/YYYY'),'09:00:00','Very sickly and lethargic');
INSERT INTO appointments(date,time,description)
VALUES(TO_DATE('03/2/2022','DD/MM/YYYY'),'09:00:00','Surgery');
INSERT INTO appointments(date,time,description)
VALUES(TO_DATE('03/2/2022','DD/MM/YYYY'),'09:00:00','Anal gland irritation');
INSERT INTO appointments(date,time,description)
VALUES(TO_DATE('03/2/2022','DD/MM/YYYY'),'09:00:00','Annual Exam');
INSERT INTO appointments(date,time,description)
VALUES(TO_DATE('03/2/2022','DD/MM/YYYY'),'09:00:00','Annual Exam');
INSERT INTO appointments(date,time,description)
VALUES(TO_DATE('03/2/2022','DD/MM/YYYY'),'09:00:00','Needs vaccinations');

CREATE TABLE veterinarians(
doctor_id SERIAL,
name TEXT NOT NULL,
license_number TEXT NOT NULL,
speciality text NOT NULL,
PRIMARY KEY(doctor_id)
);

INSERT INTO(name,license_number,sepciality)
VALUES('Aaron Smith,123-000','Surgery');
INSERT INTO(name,license_number,sepciality)
VALUES('Lucy Walker',321-000,'Small nimal Health and Wellness');
INSERT INTO(name,license_number,sepciality)
VALUES('Ann Defranco','2431-000','Exotic animal Health and Wellness');

CREATE TABLE treatments(
service_id SERIAL,
service_name TEXT NOT NULL,
price NUMERIC NOT NULL,
PRIMARY KEY(service_id)
);

INSERT INTO(service_name,price)
VALUES('Annual exam',50);
INSERT INTO(service_name,price)
VALUES('Bloodwork',75);
INSERT INTO(service_name,price)
VALUES('Vaccinations package',45);
INSERT INTO(service_name,price)
VALUES('Medical examination',85);


CREATE TABLE perscriptions(
perscription_id SERIAL,
name TEXT NOT NULL,
description TEXT NOT NULL,
dosage NUMERIC NOT NULL,
price NUMERIC NOT NULL,
PRIMARY KEY(perscription_id)
);
INSERT INTO(name,description,dosage,price)
VALUES('drug1','Helps with Lethargy',2,30);
INSERT INTO(name,description,dosage,price)
VALUES('drug2','helps with anxiety',1,35);
INSERT INTO(name,description,dosage,price)
VALUES('drug3','Helps with everything'4,60);
INSERT INTO(name,description,dosage,price)
VALUES('drug4','Helps with arthritis',3,40);






--many to many relationship tables--


CREATE TABLE cleints_pets(
account_id INT,
patient_id INT,
PRIMARY KEY(account_id,patient_id)
);



CREATE TABLE treatments_veterinarians(
service_id INT,
doctor_id INT,
PRIMARY KEY(service_id,doctor_id)
);

CREATE TABLE perscription_veterinarians(
persciption_id INT,
doctor_id INT,
);


CREATE TABLE treatments_perscriptions(
service_id INT,
perscription_id INT,
PRIMARY KEY(service_id,perscription_id)
);



--Foriegn Keys------
ALTER TABLE clients_pets
ADD CONSTRAINT fk_cp_clients FOREIGN KEY (account_id) REFERENCES clients(account_id); 
ALTER TABLE clients_pets
ADD CONSTRAINT fk_cp_pets FOREIGN KEY (patient_id) REFERENCES pets(patient_id);
 
ALTER TABLE appointments
ADD CONSTRAINT fk_appointment_pets FOREIGN KEY (patient_id) REFERENCES pets(patient_id); 

ALTER TABLE appointments
ADD CONSTRAINT fk_appointment_veterinarians FOREIGN KEY (doctor_id) REFERENCES veterinarians(doctor_id); 

ALTER TABLE appointments
ADD CONSTRAINT fk_appointment_treatment FOREIGN KEY (service_id) REFERENCES treatments(service_id); 

ALTER TABLE treatments_veterinarians
ADD CONSTRAINT fk_tv_veterinarians FOREIGN KEY (doctor_id) REFERENCES veterinarians(doctor_id);
ALTER TABLE treatments_veterinarians
ADD CONSTRAINT fk_tv_treatments FOREIGN KEY (service_id) REFERENCES treatments(service_id);

ALTER TABLE prescriptions_veterinarians
ADD CONSTRAINT fk_pv_veterinarians FOREIGN KEY (doctor_id) REFERENCES veterinarians(doctor_id);
ALTER TABLE prescriptions_veterinarians
ADD CONSTRAINT fk_pv_prescriptions FOREIGN KEY (perscription_id) REFERENCES prescriptions(prescription_id);

ALTER TABLE treatments_prescriptions
ADD CONSTRAINT fk_tp_treatments FOREIGN KEY (service_id) REFERENCES treatments(service_id);

ALTER TABLE treatments_prescriptions
ADD CONSTRAINT fk_tp_perscriptions FOREIGN KEY (perscription_id) REFERENCES prescriptions(prescription_id);


