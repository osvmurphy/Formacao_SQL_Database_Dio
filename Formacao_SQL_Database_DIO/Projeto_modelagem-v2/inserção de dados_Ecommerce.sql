-- inserção de dados e queries
use ecommerce;

show tables;
-- idC1ient,Fname, Minit,Lname,CPF,Address
INSERT INTO Clients (Fname, Minit, Lname, CPF, Address) 
		VALUES  ('Maria', 'M', 'Silva', '12346789', 'Rua Silva de Prata 29, Carangola - Cidade das Flores'),
				('Matheus', 'O', 'Pimentel', '987654321', 'Rua Alameda 289, Centro - Cidade das Flores'),
				('Ricardo', 'F', 'Silva', '45678913', 'Avenida Alameda Vinha 1009, Centro - Cidade das Flores'),
				('Julia', 'S', 'Franca', '789123456', 'Rua Lareiras 861, Centro - Cidade das Flores'),
				('Roberta', 'G', 'Assis', '98745631', 'Avenida Koller 19, Centro - Cidade das Flores'),
				('Isabela', 'C', 'Cruz', '654789123', 'Rua Alameda das Flores 28, Centro - Cidade das Flores');


-- idProduct, Pname, classification_kids boolean, category('EIetrónico' , 'Vestimenta', 'Brinquedos' , 'Alimentos' , 'Móveis'), avaliação, size
INSERT INTO product (Pname, classification_kids, category, avaliacao, size) VALUES 
							('Fone de ouvido', false, 'Eletrônico', '4', NULL),
                            ('Barbie Elsa', true, 'Brinquedos', '3', NULL),
							('Body Carters', true, 'Vestimenta', '5', NULL),
							('Microfone Vedo - Youtuber', false, 'Eletrônico', '4', NULL),
                            ('Sofá retrátil', false, 'Móveis', null, '3x57x80'),
                            ('Farinha de arroz', false, 'Alimentos', '2', null),
                            ('Fire Stick Amazon', false, 'Eletrônico', '3', null);

select * from clients;
select *  from product;
select *  from orders;

-- idOrder, idOrderC1ient, orderStatus, orderDescription, sendVa1ue, paymentCash

INSERT INTO orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) VALUES 
					(1, default,'compra via aplicativo', null, 1),
                    (2, default,'compra via aplicativo',50, 0),
                    (3, 'Confirmado',null,null,1),
                    (4, default, 'compra via web site',150,0);
 
 -- idPOproduct, idPOorder, pcQuantity, poStatus
select *  from productOrder;                 
INSERT INTO productOrder (idPOproduct, idPOorder, poQuantity, poStatus) VALUES
					(1,1,2,null),
                    (2,1,1,null),
                    (3,2,1,null);
				
INSERT INTO productStorage (storageLocation, quantity) VALUES
						('Rio de janeiro', 1000),
						('Rio de janeiro', 500),
						('São Paulo', 10),
                        ('São Paulo', 100),
                        ('São Paulo', 10),
                        ('São Paulo', 60);
						

INSERT INTO storageLocation (idLproduct, idLstorage, location) VALUES
							(1,2,'RJ'),
                            (2,6,'GO');

INSERT INTO supplier (SocialName, CNPJ, contact) VALUES
					 ('Almeida e filhos', '123456789123156', '21985474'),
					 ('Eletronicos Silva', '85451964913457', '21985484'),
					 ('Eletrônicos Valma', '934567893934695', '21975474');
                     

INSERT INTO productSupplier (idPsSupplier, idPsProduct, quantity) VALUES
							(1, 1, 500),
							(1, 2, 400),
							(2, 4, 633),
                            (3, 3, 5),
                            (2, 5, 10);



select *from seller; 
INSERT INTO seller (SocialName, AbstName, CNPJ, CPF, location, contact) VALUES
					('Tech Eletronics',null, '123456789456321', null, 'Rio de Janeiro', '219946287'),
                    ('Botique Durgas', null, null, '123456783', 'Rio de Janeiro', '219567895'),
                    ('Kids World', null, 456789123654485, null, 'São Paulo', 1198657484);

select *from productSeller; 
INSERT INTO productSeller (idPSeller, idPproduct, prodQuantity) VALUES
							(1,6,80),
							(2,7,10);

SELECT Fname,Lname, IdOrder, orderStatus FROM clients c, orders o WHERE c.idClient = idOrderClient;
SELECT concat(Fname, ' ', Lname) as Client, IdOrder, orderStatus FROM clients c, orders o WHERE c.idClient = idOrderClient;
