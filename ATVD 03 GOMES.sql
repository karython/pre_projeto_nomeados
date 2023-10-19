
CREATE DATABASE GMA;


USE GMA;

CREATE TABLE nomeado (
	IDnomeado INT PRIMARY KEY auto_increment,
    artista VARCHAR(120) NULL,
    titulo VARCHAR(120) NULL,
    youtube VARCHAR(255),
    creditos LONGTEXT,
    fk_categoria_IDcategoria INT
);
select * from nomeado;

INSERT INTO nomeado(artista,titulo,youtube,creditos,fk_categoria_IDcategoria)values
('Brent Jones','Nothing Else','https://www.youtube.com/watch?v=ioxkmOW6jlE','(Procedures) Brent Jones, Professor Jamea Roberso, Eddie Brown',1),
('Brian Courtney Wilson','Transitions(Live)','https://www.youtube.com/watch?v=-hrVKEP1A0c&list=PL448-tNzADcJCtU63mlIpTUcesLuH_wm4&index=1','(Procedures) Dana T.Sorey, Brian Courtney Wilson',1),
('JJ Hairston','Believe Again','https://www.youtube.com/playlist?list=PLWa9L1N49NVHbKYlJ_Di5Mv0hUmF_SB2g','(Procedures) JJ Hairston, Ryland Anderson,Ronnie Collins',1),
('Whitney Houston',' I Go To The Rock','https://www.youtube.com/watch?v=TpP1oaNWtKA','(Procedures) Whitney Houston, Mervyn Warren, Babe Winans, Steve Abdul Kahn Brown, Freaky Rob,D.Phelps, Ken Ehrluch, Emanuel Kiriakou,C. Stewart, Harvey Mason Jr., The Underdogs',1),
('William Murphy','Worship & Justice','https://www.youtube.com/watch?v=ieoR78NG2c4','(Procedurer) Kenneth Leonard',1),
('Melvin Crispell III', 'Alright', 'https://www.youtube.com/watch?v=Xg10QyrhRR0','(Writers) Reginald K. Scriven II, Solomon Headen, TK Morrisom',2),
('Tamela Mann','Finished (Live)','https://www.youtube.com/watch?v=V5DMmlvUVU0','(Writers) Travis Greene, Tamela Mann',2),
('Tasha Cobbs Leonard','It Is Well','https://www.youtube.com/watch?v=yFlWp_eOwcE','(Writers) Tasha Cobbs Leonard, Kenneth Leonard, Ricky Dillard, Zeke LIstenbee',2),
('The Group Walls', 'I Need You','https://www.youtube.com/watch?v=C0lpcclDqXc','(Writers) Warryn Campbell, Eric Dawkins, Darrel Walls, Ajah Walls',2),
('VaShawn Mitchell, ft. Donnie McClurkin','See The Goodness','https://www.youtube.com/watch?v=o2wgRrMkWGc','(Writer) VaShawn Mitchell',2),
('Bethel Music', 'Come Up Here', 'https://www.youtube.com/watch?v=jOTr39jE2_E','(Procedures) Chris Greely, Bobby Strand',3),
('CAIN',' Honest Offering (Live)','https://www.youtube.com/watch?v=VzmFYc9BWTA','(Procedures) Jonathan Smith, David Leonard, Brad King',3),
(' Cody Carnes',' God is Good! (Live)', 'https://www.youtube.com/watch?v=r3xBy0A-0fg',' (Procedures) Aaron Robertson, Austin Davis, Jeff Pardo, Hank Bentley',3),
('Elevation Worship','LION: Live From The Loft','https://www.youtube.com/watch?v=GRjFDSoqPIk','(Producers) Steven Furtick, Chris Brown, Scott Gardner',3),
('Matt Redman','Lamb of God','https://www.youtube.com/watch?v=m9nwwRIFUic','(Producers) Steve Marcia, Connor Shambrook, Leonard Ray Jarman, Quintin Trotter',3),
('Brandon Lake','Gratitude (Radio Version','https://www.youtube.com/watch?v=ffszHwWyRQc','(Writers) Brandon Lake, Benjamin Hastings, Dante Bowe',3),
('Brooke Ligertwood, Brandon Lake','Honey In The Rock (Live)','https://www.youtube.com/watch?v=UiApoXKRYFc','(Writers) Brooke Ligertwood, Brandon Lake, Mitch Wong',3),
('Chris Tomlin','Holy Forever','Holy Forever','(Writers) Chris Tomlin, Phil Wickham, Jason Ingram, Jenn Johnson, Brian Johnson',3),
('Maverick City Music, ft. Brandon Lake, Chandler Moore','Fear Is Not My Future (Radio Version)','https://www.youtube.com/watch?v=_9xhASFbizA','(Writers) Kirk Franklin, Brandon Lake, Jonathan Jay, Hannah Shackelford, Nicole Hannel',3),
('Phil Wickham','This Is Our God','https://www.youtube.com/watch?v=lC_eI8B1qGI','(Writers) Brandon Lake, Phil Wickham, Steven Furtick, Pat Barrett',3);

show tables;
select *from nomeado;

select *
from nomeado
left join categoria
on nomeado.fk_categoria_IDcategoria = categoria.IDcategoria;

CREATE TABLE categoria (
    IDcategoria INT PRIMARY KEY auto_increment,
    premiado TINYINT DEFAULT 0,
    nome_categoria varchar(120)
   
);

INSERT INTO categoria(nome_categoria)values
('Traditional Gospel Album of the Year'),
('Traditional Gospel Recorded Song of the Year'),
('Worship Album of the Year');

select * from categoria;
desc categoria;
desc nomeado;

ALTER TABLE nomeado ADD CONSTRAINT FK_nomeado_2
    FOREIGN KEY (fk_categoria_IDcategoria)
    REFERENCES categoria (IDcategoria)
    ON DELETE CASCADE;