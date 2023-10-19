create database premiacao;
use premiacao;



CREATE TABLE nomeado (
    IDnomeado int PRIMARY KEY auto_increment,
    artista varchar(120),
    titulo varchar(120),
    youtube varchar(120),
    Credito longtext,
	fk_categoria_categoria_id int
);

drop table nomeado;


insert into nomeado(artista,titulo,youtube,Credito) values
(null,null,null,'Jeff Pardo'),
(null,null,null,'Jonathan Jay'),
('Brandon Lake',null,null,'(Record Label) Provident Entertainment'),
('CeCe Winans',null,null,'(Record Label) Fair Trade Music'),
('for KING + COUNTRY',null,null,'(Record Label) Curb | Word Entertainment'),
('Lauren Daigle',null,null,'(Record Label) Centricity Music'),
('Phil Wickham',null,null,'(Record Label) Fair Trade Music'),
('Ben Fuller', null,null, '(Record Label) Provident Entertainment'),
('Hulvey',null,null,'(Record Label) Reach Records'),
('Jon Reddick',null,null,'(Record Label) Gotee Records'),
('Katy Nichole',null,null,'(Record Label) Centricity Music'),
('Naomi Raine',null,null,'(Record Label) Tribl Records'),
(null,null,null,'Jeff Pardo'),
(null,null,null,'Kenneth Leonard'),
(null,null,null,'Samuel ASH'),
(null,null,null,'Wayne Haun'),
(null,null,null,'Team:Ben Glover and Jeff Sojka'),
('Forrest Frank, ft  Hulvey','no longer bound','https://www.youtube.com/watch?v=P8vtPmJE1FY',
'(Writers) Forrest Frank, Chris Hulvey'),
('KB, Brandon Lake','Graves','https://www.youtube.com/watch?v=wI6Np0oso3c',
'(Writers) Brandon Lake, Chris Brown, 
Kevin Elijah Burgess, Quinten Coblentz,
 Steven Furtick, Tiffany Hudson, Wesley Smith');

select * from nomeado;


 update nomeado set fk_categoria_categoria_id=1  where IDnomeado <=2 ;
 update nomeado set fk_categoria_categoria_id=2 where IDnomeado >=3 and IDnomeado <=7;
 update nomeado set fk_categoria_categoria_id=3 where IDnomeado >=8 and IDnomeado <=12;
 update nomeado set fk_categoria_categoria_id=4 where IDnomeado >= 13 and IDnomeado <=17;
update nomeado set fk_categoria_categoria_id=5 where IDnomeado >=18 and IDnomeado <=19;
  
  CREATE TABLE categoria (
    IDcategoria int PRIMARY KEY auto_increment,
    nome_categoria varchar(120),
    premiado tinyint default 0
);
 
 drop table categoria; 
 
 select *from categoria;
 truncate table categoria;
 insert into categoria(nome_categoria) values
 ('Songwriter of the Year - Non Artist'),
 ('Artist of the Year'),
 ('New Artist of the Year'),
('Producer of the Year'),
('Rap/Hip Hop Recorded Song of the Year') ;
 
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