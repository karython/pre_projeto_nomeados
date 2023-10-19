
USE  nomeado;
CREATE TABLE nomeado (
    idnomeado int PRIMARY KEY,
    artista varchar(120),
    titulo varchar(120),
    youtube varchar(250),
    credito longtext,
    fk_categoria_idcategoria int
);
insert into nomeado(youtube,credito,fk_categoria_idcategoria)values('https://www.youtube.com/watch?v=i5NU89g6y0I&list=PLqqIeY4y_sG-ZjNnNdMVsRQskGjebAjR3','(Producers) Zorin McGuire, Sarah Kroger',115),
('https://www.youtube.com/watch?v=ro5qDZQYIxA&list=PL2qQXyLK4-1X2zy4muPgrOIDjO5RGC0GQ','((Producer) Jason Kyle Saetveit',116),
('https://www.youtube.com/watch?v=Zu9C-BJYtXE','(Producer) Trey Ivey',117),
('https://www.youtube.com/watch?v=rhl7jml2w-s','(Producers) Wayne Haun, John Darin Rowsey',118),
('https://www.youtube.com/watch?v=Gdu8M2val_w','(Producer) Wayne Haun',119),
('https://www.youtube.com/watch?v=nZXRV4MezEw','(Producers) Wayne Haun, Michael Sykes',120),
('https://www.youtube.com/watch?v=D77_PfxuzFo','(Producers) Wayne Haun, Scott Inman, Kris Crunk',121),
('https://www.youtube.com/watch?v=VDA8pFirUmI&list=OLAK5uy_nppdcYOWBr6wbJWAZ1hNz2EXiM4GnZ_BQ','(Producers) Authentic Unlimited',122),
('https://www.youtube.com/watch?v=nPvuNsRccVw','(Producers) Jeff & Sheri Easter, Greg Cole',123),
('https://www.youtube.com/watch?v=kdU9oA6WIr8','(Producers) Sandra McCracken, Seth Talley',124),
('https://www.youtube.com/watch?v=13fn10H_p3Q','(Producers) Barry Weeks, Clint Brown',125),
('https://www.youtube.com/watch?v=I6hyYqC7110','(Producers) Tyler Childers, The Food Stamps',126),
('https://www.youtube.com/watch?v=o_KswSPOn1Y','(Producers) Jonathan McReynolds, Gina Miller, Walter Thomas, Darryl Howell, Rogest Carstarphen, Camper, Byron Thomas, Dreek',127),
('https://www.youtube.com/watch?v=SSAWrV2n-68&list=PLuHOpYlf8cQEPuozhqh3qWMczYv99n_Xj','(Producers) Tony Brown, Jonathan Jay, Kirk Franklin, Chandler Moore, Norman Gyamfi, Maxwell Stark, Harold Brown, Demetrius Smith, Ron Hill',128),
('https://www.youtube.com/watch?v=Mhj15W23IjA','(Producers) Pastor Mike Jr, David “DLo” Outing, Jevon Hill, Stanley Green, Phil Mango, Jeremy James, Rod Turner, Dustin Slater, John Smith, Quentin Dennard, Alexander Brown, Israil Ali, Bartholomew Orr, Jason Clayborn, Snipe Young, 1KPhew, Adia Andrews, Amanda Gentry, Terrell Pettus, Curtiss Glenn, The Colleagues',129),
('https://www.youtube.com/watch?v=LsgUZt40VX0','(Producers) David Mann Sr., Tamela Mann, La Tia Mann, Justin Pearson, Dontaniel Kimbrough, Phillip Bryant, Jevon Hill, Kirk Franklin, Travis Greene, Todd Dulaney, Shaun Martin, Slikk Muzik, Stanley Green, Daniel Bryant',130),
('https://www.youtube.com/watch?v=ebetp6_TUZc','(Producers) Tye Tribbett, Joseph Bethea, Derrick Guinyard, Shante Tribbett, David “DLo” Outing, Jevon Hill, Brian Miller',131),
('https://www.youtube.com/watch?v=tAGnKpE4NCI','(Producers) Brent Jones, Professor James Roberson, Eddie Brown',132),
('https://www.youtube.com/watch?v=-hrVKEP1A0c&list=PL448-tNzADcJCtU63mlIpTUcesLuH_wm4','(Producers) Dana T. Sorey, Brian Courtney Wilson',133);

CREATE TABLE categoria (
    idcategoria int PRIMARY KEY,
    nome_categoria varchar(120),
    premiado tinyint default 0
);
INSERT INTO categoria(nome_categoria)values('Inspirational Album of the Year'),
('Inspirational Album of the Year'),('Inspirational Album of the Year'),
('Inspirational Album of the Year'),('Southern Gospel Album of the Year'),
('Southern Gospel Album of the Year'),('Southern Gospel Album of the Year'),
('Southern Gospel Album of the Year'),('Southern Gospel Album of the Year'),
('Bluegrass/Country/Roots Album of the Year'),('Bluegrass/Country/Roots Album of the Year'),
('Bluegrass/Country/Roots Album of the Year'),('Bluegrass/Country/Roots Album of the Year'),
('Bluegrass/Country/Roots Album of the Year'),('Contemporary Gospel Album of the Year'),
('Contemporary Gospel Album of the Year'),('Contemporary Gospel Album of the Year'),
('Contemporary Gospel Album of the Year'),('Contemporary Gospel Album of the Year'),
('Traditional Gospel Album of the Year'),('Traditional Gospel Album of the Year');




 ALTER TABLE nomeado ADD CONSTRAINT FK_nomeado_2
    FOREIGN KEY (fk_categoria_idcategoria)
    REFERENCES categoria (idcategoria)
    ON DELETE CASCADE;