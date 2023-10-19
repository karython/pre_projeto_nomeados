
CREATE DATABASE playlistgospel;

USE playlistgospel;

/* nomeados_simples_logico: */

CREATE TABLE nomeado (
    nomeado_id int PRIMARY KEY,
    artista varchar(120),
    titulo varchar(120),
    youtube varchar(120),
    fk_categoria_categoria_id int,
    credito longtext
);

CREATE TABLE categoria (
    categoria_id int PRIMARY KEY,
    nome_categoria varchar(120),
    premiado tinyint default 0
);
 
ALTER TABLE nomeado ADD CONSTRAINT FK_nomeado_2
    FOREIGN KEY (fk_categoria_categoria_id)
    REFERENCES categoria (categoria_id)
    ON DELETE CASCADE;
    

show tables;

select *from categoria;

insert into nomeado (artista,titulo,youtube,credito) values 
 ('limoblaze com lecrae happi','jireh my provider','https://www.youtube.com/watch?v=C_rjNGjckUc','Steven Furtick, Chandler Moore, Chris Brown, Lasanna Harris, Lecrae Moore, Mark Babatunde, Naomi Raine, Samuel Onwubiko'),
 ('Scootie Wop','spin back','https://www.youtube.com/watch?v=ohl0lNCff6o','Emmanuel Louis Lofton, Crystal Waters, Neal Brian Conway'),
 ('Cochren & Co','https://www.youtube.com/watch?v=zU-n9Lg1ZF8','Michael Cochren Christopher Stevens'),
 ('Consumido pelo Fogo','Goodbye Ole Me','https://www.youtube.com/watch?v=20-HOA2X-wI','Writers Caleb Ward, Jordan Ward, Iveth Luna'),
 ('Discípulo','Prometa viver','https://www.youtube.com/watch?v=xK4Bti967kQ','Writers Josiah Prince, Andrew Stanton, Kevin Young'),
 ('Gable Price and Friends','Brother Jack','https://www.youtube.com/watch?v=AZotr87upOI','Writers Gable Price, Scott Mills'),
 ('Skillet','Psycho In My Head','https://www.youtube.com/watch?v=3SZBBjmwALQ','Writers John Cooper, Mark Holman'),
 ('Blessing Offor','Brighter Days','https://www.youtube.com/watch?v=wNgAtyvrAwU','Writers Sam Ellis, Blessing Offor'),
 ('CAIN','Im So Blessed (Best Day Remix)','https://www.youtube.com/watch?v=GIO4bJJVQ1U','Writers Matthew West, Jonathan Smith, Logan Cain, Taylor Cain Matz, Madison Cain Johnson'),
 ('for KING + COUNTRY, ft. Jordin Sparks','Love Me Like I Am','https://www.youtube.com/watch?v=yeA5JGiIb6Y','Writers Joel Smallbone, Luke Smallbone, Michael Pollack, Josh Kerr'),
 ('Katy Nichole, Big Daddy Weave','God Is In This Story','https://www.youtube.com/watch?v=83lLHqxi1-8','Writers Ethan Hulse, Katy Nichole, Jeff Pardo'),
 ('Lauren Daigle','Thank God I Do','https://www.youtube.com/watch?v=wfR6XLXRNy0','Writers Nate Ruess, Lauren Daigle, P!nk, Jeff Bhasker, Jason Ingram'),
 ('Brooklyn Tabernacle, ft. TaRanda Greene','Hes Been Faithful','https://www.youtube.com/watch?v=PVUT2GiBAMQ','Writer Carol Cymbala'),
 ('Gaither Vocal Band','Jesus What a Lovely Name','https://www.youtube.com/watch?v=_4S7Me1-KSQ','Writers Bill Gaither, Gloria Gaither'),
 ('Jim & Melissa Brady','Welcome','https://www.youtube.com/watch?v=kf_-Sd_fTD4','Writers Jim Brady, Michael Farren, Tony Wood'),
 ('Keith & Kristyn Getty, Michael W. Smith','Christ Our Hope in Life and Death','https://www.youtube.com/watch?v=OibIi1rz7mw','Writers Matthew Boswell, Keith Getty, Jordan Kauflin, Matt Merker, Matt Papa'),
 ('Michael W. Smith','They Will Know We Are Christians By Our Love','https://www.youtube.com/watch?v=dtN_s8BpqYw','Writer Peter Scholtes'),
 ('Ernie Haase & Signature Sound','I Know My Savior Cares','https://www.youtube.com/watch?v=7C-aWOOCFbk','(Writers) Ernie Haase, Wayne Haun, Joel Lindsey');


insert into categoria (nomeca_tegoria) values
 ('Rap/Hip Hop Recorded Song of the Year'),
 ('Rap/Hip Hop Recorded Song of the Year'),
 ('Rap/Hip Hop Recorded Song of the Year'),
 ('Rock/Contemporary Recorded Song of the Year'),
 ('Rock/Contemporary Recorded Song of the Year'),
 ('Rock/Contemporary Recorded Song of the Year'),
 ('Rock/Contemporary Recorded Song of the Year'),
 ('Rock/Contemporary Recorded Song of the Year'),
 ('Pop/Contemporary Recorded Song of the Year'),
 ('Pop/Contemporary Recorded Song of the Year'),
 ('Pop/Contemporary Recorded Song of the Year'),
 ('Pop/Contemporary Recorded Song of the Year'),
 ('Pop/Contemporary Recorded Song of the Year'),
 ('Inspirational Recorded Song of the Year'),
 ('Inspirational Recorded Song of the Year'),
 ('Inspirational Recorded Song of the Year'),
 ('Inspirational Recorded Song of the Year'),
 ('Inspirational Recorded Song of the Year'),
 ('Southern Gospel Recorded Song of the Year');







 





 






