create database premiacao;
use premiacao;

/*Criando Tabelas*/
CREATE TABLE nomeado (
    IDnomeado int PRIMARY KEY auto_increment,
    artista varchar(120),
    titulo varchar(120),
    youtube varchar(120),
    Credito longtext,
	fk_categoria_categoria_id int
);
  
CREATE TABLE categoria (
    IDcategoria int PRIMARY KEY auto_increment,
    nome_categoria varchar(120),
    premiado tinyint default 0
);
 
ALTER TABLE nomeado ADD CONSTRAINT FK_nomeado_2
	FOREIGN KEY (fk_categoria_categoria_id)
	REFERENCES categoria (IDcategoria)
	ON DELETE CASCADE;

/*Adicionando dados*/
select * from categoria;
desc categoria;

insert into categoria(nome_categoria) values 
('Spanish Language Album of the Year'),
('Worship Album of the Year'),
('Christmas/Special Event Album of the Year');

select * from nomeado;
desc nomeado;
Insert into nomeado(titulo, artista, youtube, credito, fk_categoria_categoria_id) values 
('Lo Que Vemos', 'Marcos Vidal', 'https://youtu.be/BmTLsp3t0_s?si=AQStyAZdIasms-4j', '(Producers) Mike Rodriguez, Eliseo Tapia', '1'),/*Início 144*/
('Rompiendo','Redimi2','https://youtu.be/SGc6CqzifFM?si=_JKnP8oTJkrDip9w','(Producers) Niko Eme, Brayan Booz, Barajas, Kanelo Pro, Music Mind, Nath, Cardec Drums, Chunky','1'),/*145*/
('X SIEMPRE','Un Corazon','https://youtu.be/x0G_173HhH4?si=mmAwtYAtmwPEFeOz','(Producer) Steven Richards','1'),/*146*/
('Come Up Here', 'Bethel Music', 'https://youtube.com/playlist?list=PL6-B652C0OuI2yQuXL6yHVEQURPv9gIHc&si=4xZzX4pjRHjHtqY6','(Producers) Chris Greely, Bobby Strand', '2'),/*147*/
('tituloHonest Offering (Live)','CAIN','https://youtube.com/playlist?list=PLQpr_kDhp4vB9zmsOXMA6252HmN_K4I9g&si=XWUAIKk-zy_PCTmV','(Producers) Jonathan Smith, David Leonard, Brad King','2'),/*148*/
('God Is Good! (Live)','Cody Carnes','https://youtube.com/playlist?list=PLe75W3WnJD5uLplZKpBqFIXzUnh85h3XX&si=6GxM3FJVw5a0oLPT','(Producers) Aaron Robertson, Austin Davis, Jeff Pardo, Hank Bentley','2'),/*149*/
('LION: Live From The Loft','Elevation Worship','https://youtube.com/playlist?list=PLGvkktFFaDOPj6IPyY4EMOvZwFddttiGg&si=7TqELMDZqf-OkHSl','(Producers) Aaron Robertson, Austin Davis, Jeff Pardo, Hank Bentley','2'), /*150*/
('Lamb of God','Matt Redman','https://youtube.com/playlist?list=PLTKNPn6Epd2rD42LeS3w7Mr8K5zvo1yUE&si=P37WR-jEfFyHQiof','(Producers) Steve Marcia, Connor Shambrook, Leonard Ray Jarman, Quintin Trotter','2'),/*151*/
('The Manger','Anne Wilson','https://youtube.com/playlist?list=PLrCXQ2rP_isZXBDr0m5HUWw4J8m_Q-tzk&si=G27_SprfVmEc5ARM','(Producers) Jeff Pardo, Jonathan Smith','3'),/*152*/
('Milk & Cookies: A Merry Crowder Christmas','Crowder','https://youtube.com/playlist?list=PLLvKgVy_tINAvnjSigAUgQ5Ps7Vuyq0yN&si=HCWL1hkX6dejhfT1','(Producers) Ben Glover, Jeff Sojka, Tommee Profitt','3'),/*153*/
('Sing: Christmas Songs','Ellie Holcomb','https://youtube.com/playlist?list=PL5DK9YiWZmHvVx1mnzhxAluKXtdc2msAj&si=_u19KYxXd05kyNvF','(Producers) Nathan Dugger, Brown Bannister','3');/*154*/

select n.IDnomeado, n.artista, n.titulo, n.youtube, n.Credito, c.nome_categoria, c.premiado
from nomeado as n
left join categoria as c
on c.IDcategoria= n.fk_categoria_categoria_id;
 