create database premiacao;
use premiacao;


  CREATE TABLE categoria (
    IDcategoria int PRIMARY KEY auto_increment,
    nome_categoria varchar(120),
    premiado tinyint default 0
);
 
 insert into categoria(nome_categoria) values
 ('Traditional Gospel Album of the Year'),
 ('Gospel Worship Album of the Year'),
 ('Spanish Language Album of the Year');





CREATE TABLE nomeado (
    IDnomeado int PRIMARY KEY auto_increment,
    artista varchar(120),
    titulo varchar(120),
    youtube varchar(120),
    Credito longtext,
	fk_categoria_categoria_id int
);




insert into nomeado(artista, titulo, youtube, Credito, fk_categoria_categoria_id) values
('JJ Hairston', 'Believe Again  ','https://www.youtube.com/watch?v=PFOX5wv7H6g&list=PLWa9L1N49NVHbKYlJ_Di5Mv0hUmF_SB2g','(Producers) JJ Hairston, Ryland Anderson, Ronnie Collins', 1),
('Whitney Houston','I Go To The Rock','https://www.youtube.com/watch?v=TpP1oaNWtKA&pp=ygUgd2hpdG5leSBob3VzdG9uIGkgZ28gdG8gdGhlIHJvY2s%3D','(Producers) Whitney Houston, Mervyn Warren, Bebe Winans,Steve Abdul Kahn Brown, Freaky Rob, D. Phelps, Ken Ehrlich, Emanuel Kiriakou, C. Stewart, Harvey Mason Jr., The Underdogs',1),
('William Murphy','Worship & Justice','https://www.youtube.com/watch?v=32dsJ4SHIPw&pp=ygUid2lsbGlhbSBtdXJwaHkgd29yc2hpcCBhbmQganVzdGljZQ%3D%3D','(Producer) Kenneth Leonard',1),
('Forward City, Travis Greene ','Tent Revival ','https://www.youtube.com/watch?v=2Ok6zmYJ5CU&pp=ygUhRm9yd2FyZCBDaXR5LCBUcmF2aXMgR3JlZW5lwqB0ZW50','(Producers) Travis Greene, Matthew Edwards, Brunes Charles, Reggie Rhett',2),
('Jonathan Traylor','Closer Than You Think','https://www.youtube.com/watch?v=YD7aV_HslXk&list=PLp7CAj67kfyx5J8kT3HpiPXaAdAiHyTHa','(Producers) Lightmuzik, Jeff Pardo, Jordan Sapp',2),
('Tasha Cobbs Leonard','Hymns (Live)','https://www.youtube.com/watch?v=24Yyk1p-JPs&list=PLgUj9SAgkIefkkR82iMAsOVZD2yMIe6FO','(Producers) Kenneth Leonard, Jevon Hill, Leonard Ray Jarman',2),
('Todd Galberth','Encounter','https://www.youtube.com/watch?v=cHJamC9nO4k&list=PLWa9L1N49NVES7EQ9tB5MzQZw6Is3ZQwl','(Producers) Todd Galberth, Dontavious Ladson, Jevon Hill',2),
('Zacardi Cortez','Imprint','https://www.youtube.com/watch?v=GJleApZURn8&list=PLG9taOlIAU90t2-_QaobBglXRs-nShWBy','(Producers) Morgan Turner, AyRon Lewis, Lucius B. Hoskins, Nicholas Humes',2),
('Gateway Worship Espanol','Grande y Fiel (En Vivo)','https://www.youtube.com/watch?v=15gX97DxWB0&pp=ygUuZ2F0ZXdheSB3b3JzaGlwIGVzcGHDsW9sIGdyYW5kZSB5IGZpZWwgZW4gdml2bw%3D%3D','(Producers) Kyle Lee, Danny Pena',3),
('Generacion 12','Tu Reino Esta Aqui','https://www.youtube.com/watch?v=fb3QgRd5AnM&list=PLUTItT4GfuKHWv8RbrC2ux40Q3zixydjd','(Producers) Lorena Castellanos, Johan Manjarres, Anthony Catacoli, Jairo Zuluaga, Andres Mazuera',3);


  

 
 select * from categoria;
 
 select * from nomeado;
 
 
 desc categoria;
 
select nomeado.IDnomeado, nomeado.artista, nomeado.titulo, nomeado.youtube, nomeado.Credito,categoria.nome_categoria, categoria.premiado
from nomeado
left join categoria on categoria.IDcategoria= nomeado.fk_categoria_categoria_id;
 
ALTER TABLE nomeado ADD CONSTRAINT FK_nomeado_2
    FOREIGN KEY (fk_categoria_categoria_id)
    REFERENCES categoria (IDcategoria)
    ON DELETE CASCADE;