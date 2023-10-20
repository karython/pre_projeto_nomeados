create database ;

CREATE TABLE nomeado (
    IDnomeado INT PRIMARY KEY auto_increment,
    artista VARCHAR(80),
    titulo VARCHAR(80),
    youtube VARCHAR(255),
    credito LONGTEXT,
    fk_categoria_IDcategoria INT
);

INSERT INTO nomeado (youtube,credito,fk_categoria_IDcategoria)
values("https://www.youtube.com/watch?v=NctM77sCzwE&list=PL9tY0BWXOZFuqRWM__7nox1RemoUM82o4","Ben Glover, Jeff Sojka, Tommee Profitt",1),
("https://www.youtube.com/results?search_query=Sing%3A+Christmas+Songs","Nathan Dugger, Brown Bannister",1),
("https://www.youtube.com/watch?v=nnhr5uxyFmg","Michael W. Smith, Mark Campbell",1),
("https://www.youtube.com/watch?v=gfaY5x_HQ90&list=PLdVwhcObDVLIvery7l_Pfbou02efg6uRO","(Producer) Keith Everette Smith",1),
("https://www.youtube.com/watch?v=J7vsGTIDhNc","(Arranger) Carol Cymbala, (Orchestrators) J. Daniel Smith, Chris McDonald, Jim Hammerly, Bradley Knight",2),
("https://www.youtube.com/watch?v=LOuw3rLY7Zg","(Arranger) Phil Nitz",2),
("https://www.youtube.com/watch?v=XYKUEBEqXr0","(Creators) Sue C. Smith, Lee Black, Russell Mauldin, Johnathan Crumpton, (Arranger/ Orchestrator) Russell Mauldin",2),
("https://www.youtube.com/watch?v=VUoykKvQ7Lw","(Arranger and Orchestrator) Bradley Knight",2),
("https://www.youtube.com/watch?v=2c4VG4nabhU","(Creator/ Arranger) John Bolin, (Orchestrator) Cliff Duren",2),
("https://www.youtube.com/watch?v=1IbCCW6iSeo","(Art Director) Kevin Hackett",3),
("https://www.youtube.com/watch?v=2DCNE85IQy4","(Art Directors) Zach Bolen, Matthew Warren, (Graphic Designer/ Photographer) Matthew Warren",3),
("https://www.youtube.com/watch?v=OcF1vtvP8Jk","(Art Director) Arvonecia Armstrong, (Photographer) Tatyanna Chamere, (Graphic Designer) Kevin Hackett",3),
("https://www.youtube.com/watch?v=GaSQ_1J21dA","(Art Directors/Graphic Designer) Tony Matula, Laura Matula ,Tim Parker, (Photographers) Tony Matula, Laura Matula ",3),
("https://www.youtube.com/watch?v=IWGrW1q_l-4","(Art Director) Jay Argaet, (Graphic Designers) Caleb Nietschke, Luke Hastings, (Photographer) Anabel Litchfield",3),
("https://www.youtube.com/watch?v=wIQQDYaoWpc","(Director) Andrew Cherry, (Producer) Mitchell Schleper",4),
("https://www.youtube.com/watch?v=wfR6XLXRNy0","(Director) Caleb Mallery, (Producer) Alex P. Willson",4),
("https://www.youtube.com/watch?v=zcFajQKAe48","(Director) Ray Neutron, (Producer) Jessica Zerby",4),
("https://www.youtube.com/watch?v=KENFXReSplA","(Director) Eric Welch, (Producer) Scott McDaniel",4),
("https://www.youtube.com/watch?v=qbPxZPsjhbg","(Director) Sean Hagwell, (Producer) Kirsten Hagwell",4),
("https://www.youtube.com/watch?v=PwSvT7KwJ5M","(Director) Elliott Eicheldinger",4),
("https://www.youtube.com/watch?v=EbMYye-2Yt8","(Director/ Producer) Luke Manwaring",4),
("https://www.youtube.com/watch?v=jbIh6Otsy7w","(Director/ Producer) Luke Manwaring",4),
("https://www.youtube.com/watch?v=R7IYvR-GDRQ","(Director) Juan Garcia, (Producer) Jayson Palacio",4),
("https://www.youtube.com/watch?v=-L5xi8DbQ5c","(Director) Eric Welch, (Producer) Steve Lamar, Scott McDaniel",4),




CREATE TABLE categoria (
    IDcategoria INT PRIMARY KEY auto_increment,
    nome_categoria VARCHAR(120),
    premiado TINYINT DEFAULT 0
);


 
 INSERT INTO categoria (nome_categoria) VALUES
 ("Christmas/Special Event Album of the Year"),("Musical/Choral Collection of the Year"),
 ("Recorded Music Packaging of the Year"),("Short Form Music Video of the Year (Concept)");
 
ALTER TABLE nomeado ADD CONSTRAINT FK_nomeado_2
    FOREIGN KEY (fk_categoria_IDcategoria)
    REFERENCES categoria (IDcategoria)
    ON DELETE CASCADE;