Use BD_TPI_27

-- inset suscripcion

Insert Into Suscripcion (Nombre, Descripcion, plazo, precio)
 Values ('Básico','Acceso a contenido AudioVisual con Anuncios y calidad (720p)',30,11999.99)
Insert Into Suscripcion (Nombre, Descripcion, plazo, precio)
Values ('Premium','Acceso a contenido AudioVisula sin anuncio, control parental, 4 dispositivos conectados y calidad (4k)', 30, 23999.99);

SELECT * FROM Usuarios

--TIPO DE CONTENIDO

Insert Into TipoContenido (Nombre)
values ('Películas'),
       ('Series'),
       ('Documental');

--GENERO

Insert Into Genero (Nombre)
Values ('Acción'),
       ('Drama'),
       ('Comedia'),
       ('Terror'),
       ('Romance'),
       ('Ciencia ficción'),
       ('Aventura'),
       ('Suspenso'),
       ('Fantasia'),
       ('Animación'),
       ('Crimen'),
       ('Documental'),
       ('Histórico'),
       ('Musical');

--USUARIOS

Insert Into Usuarios (NombreUsuario, Nombre, Apellido, DNI ,Email,Contraseña,Pais)
Values ('martingomez', 'Martín', 'Gómez','26700542' ,'martin.gomez02@hotmail.com', 'Ma5678', 'Argentina')
Insert Into Usuarios (NombreUsuario, Nombre, Apellido, DNI , Email, Contraseña, Pais)
Values ('luciafernandez', 'Lucía', 'Fernández', '34212600','lucia.fernandez03@yahoo.com', 'Lu9101', 'Chile'),
('juanperez', 'Juan', 'Pérez','37890098' ,'juan.perez04@gmail.com', 'Ju1122', 'Uruguay'),
('vale_rodriguez', 'Valentina', 'Rodríguez','40231455','valentina.rodriguez05@outlook.com', 'Va3344', 'Paraguay'),
('aguslopez', 'Agustín', 'López','42356789' ,'agustin.lopez06@gmail.com', 'Ag5566', 'Argentina'),
('camilatorres', 'Camila', 'Torres', '38999888','camila.torres07@hotmail.com', 'Ca7788', 'Chile'),
('tomasdiaz', 'Tomás', 'Díaz','87654321','tomas.diaz08@gmail.com', 'To9900', 'Perú'),
('julimartinez', 'Julieta', 'Martínez', '43900876','julieta.martinez09@yahoo.com', 'Ju1212', 'Argentina'),
('nicosanchez', 'Nicolás', 'Sánchez','51234567' ,'nicolas.sanchez10@gmail.com', 'Ni3434', 'Uruguay'),
('emmacastro', 'Emma', 'Castro','1234567' ,'emma.castro11@gmail.com', 'Em5656', 'Bolivia')

--SUSCRIPCION DEL USUARIO
SELECT * FROM SuscripcionDelUsuario
Insert Into SuscripcionDelUsuario (IdUsuario, IdSuscripcion, FechaInicio, FechaVencimiento, Activo)
Values  (1, 2, '2026/05/15', '2026/07/15', 1),
        (2, 1, '2025/12/20', '2026/02/20', 0),
        (2, 2, '2026/02/20', '2026/07/20', 1),
        (3, 2, '2026/03/15', '2026/05/04', 0),
        (4, 2, '2026/02/25', '2026/07/25', 1)
Insert Into SuscripcionDelUsuario (IdUsuario, IdSuscripcion, FechaInicio, FechaVencimiento, Activo)
Values (5, 1, '2026/01/12', '2026/03/12', 0),
       (5, 2, '2026/03/10', '2026/9/10', 1),
       (6, 2, '2026/03/15', '2026/8/15', 1),
       (7, 1,'2026/02/03', '2026/05/03', 0)

Insert Into SuscripcionDelUsuario (IdUsuario, IdSuscripcion, FechaInicio, FechaVencimiento, Activo)
Values (8, 2, '2026/02/06', '2026/10/06', 1),
       (9, 1, '2026/05/05', '2026/07/05',1),
       (10, 2, '2026/04/07','2026/05/07',0)

-- PRODUCTORA

Insert Into Productora (Nombre,Pais,Web)
Values ('Universal Pictures','Estados Unidos','https://www.universalpictures.com.ar/'),
       ('Warner Bros. Pictures', 'Estados Unidos', 'https://www.warnerbros.com/'),
       ('Pixar Animation Studios', 'Estados Unidos', 'https://www.pixar.com/'),
       ('Kapow', 'Argentina', 'https://www.kapow.com.ar/'),
       ('Netflix', 'Estados Unidos', 'https://www.netflix.com/'),
       ('Marvel Studios', 'Estados Unidos', 'https://www.marvel.com/'),
       ('Sony Pictures Releasing','Estados Unidos','https://www.sonypictures.com/'),
       ('K&S Films', 'Argentina','https://www.ks-films.com/'),
       ('Star Original Productions','Argentina','https://www.starplus.com/');

Insert Into Contenido (Titulo, Descripcion, Duracion, FechaLanzamiento, IdGenero, IdTipoContenido, IdProductora, Activo)
Values ('Stranger Things', 'Un grupo de niños enfrenta sucesos paranormales en su pueblo', NULL,'2016-07-15', 6, 2,5, 1)
Insert Into Contenido (Titulo, Descripcion, Duracion, FechaLanzamiento, IdGenero, IdTipoContenido, IdProductora, Activo)
Values       
       ('Friends', 'Seis amigos viven situaciones cotidianas en Nueva York.', NULL,'1994-09-22', 3, 2, 2, 1),
       ('Batman: El caballero de la noche', 'Batman enfrenta al Joker en Gotham City.', 152, '2008-07-18', 1, 1, 2, 1),
       ('Coco', 'Un niño viaja al mundo de los muertos para descubrir su historia familiar.', 105, '2017-11-22', 10, 1, 3, 1),
       ('Avengers Endgame', 'Los Avengers enfrentan la batalla final contra Thanos.', 181, '2019-04-26', 1, 1, 6, 1),
       ('Envidiosa','Una mujer comienza a replantearse su vida y sus relaciones mientras lidia con la envidia hacia quienes la rodean.',NULL, '2024-09-18', 3, 2, 4,1),
       ('El Encargado', 'Un encargado de edificio manipula y controla la vida de los vecinos mientras oculta sus verdaderas intenciones',NULL,'2022-10-26',3,2,9,1),
       ('Cobra Kai','Continuación de Karate Kid centrada en Johnny Lawrence y Daniel LaRusso.',NULL,'2018-05-02',1,2,5,1),
       ('El Eternauta','Tras una nevada tóxica que arrasa Buenos Aires, un grupo de sobrevivientes lucha por mantenerse con vida mientras descubre una amenaza extraterrestre detrás de la catástrofe.',NULL,'2025-04-30',6,2,8,1),
       ('Iron Man: el hombre de hierro','Tony Stark, un brillante multimillonario y fabricante de armas, crea una poderosa armadura tecnológica para escapar de sus enemigos y decide usarla para combatir el crimen como Iron Man.',126,'2008-05-02',1,1,6,1),
       ('Mi villano favorito','Gru, un villano retirado, vive divertidas aventuras junto a sus inseparables minions.',95,'2010-07-09',10,1,1,1),
       ('Ant-Man: el hombre hormiga','Scott Lang obtiene un traje especial que le permite reducir su tamaño y convertirse en héroe.',117,'2015-07-17',3,1,6,1),
       ('Spider-Man: De regreso a casa','Peter Parker intenta equilibrar su vida adolescente mientras combate el crimen como Spider-Man.',133,'2017-07-07',1,1,6,1),
       ('Uncharted: fuera del mapa','Nathan Drake se embarca en una peligrosa aventura para encontrar un tesoro perdido.',116,'2022-02-18',7,1,7,1),
       ('Sherlock Holmes','El famoso detective Sherlock Holmes resuelve misteriosos casos junto al doctor Watson.',128,'2009-12-25',1,1,2,1)

SELECT * FROM Contenido

--TEMPORADA

INSERT INTO Temporada (IdContenido, NumeroTemporada, Titulo, FechaLanzamiento)
VALUES
-- Stranger Things
(1, 1, 'Stranger Things - Temporada 1', '2016-07-15'),
(1, 2, 'Stranger Things - Temporada 2', '2017-10-27'),
(1, 3, 'Stranger Things - Temporada 3', '2019-07-04'),
(1, 4, 'Stranger Things - Temporada 4', '2022-05-27')

INSERT INTO Temporada (IdContenido, NumeroTemporada, Titulo, FechaLanzamiento)
VALUES
-- Friends
(2, 1, 'Friends - Temporada 1', '1994-09-22'),
(2, 2, 'Friends - Temporada 2', '1995-09-21'),
(2, 3, 'Friends - Temporada 3', '1996-09-19'),
(2, 4, 'Friends - Temporada 4', '1997-09-25'),
(2, 5, 'Friends - Temporada 5', '1998-09-24'),

-- Envidiosa
(6, 1, 'Envidiosa - Temporada 1', '2024-01-10'),

-- El Encargado
(7, 1, 'El Encargado - Temporada 1', '2022-10-26'),
(7, 2, 'El Encargado - Temporada 2', '2023-11-29'),

-- Cobra Kai
(8, 1, 'Cobra Kai - Temporada 1', '2018-05-02'),
(8, 2, 'Cobra Kai - Temporada 2', '2019-04-24'),
(8, 3, 'Cobra Kai - Temporada 3', '2021-01-01'),

-- El Eternauta
(9, 1, 'El Eternauta - Temporada 1', '2025-04-30');

select * from Contenido

--EPISODIOS

INSERT INTO Episodio (IdTemporada, NumeroEpisodio, Titulo, Descripcion, Duracion, FechaLanzamiento)
VALUES

-- Stranger Things T1 (IdTemporada = 1)
(1, 1, 'La desaparición de Will Byers', 'Will desaparece misteriosamente en Hawkins.', 47, '2016-07-15'),
(1, 2, 'La loca de Maple Street', 'Mike y sus amigos intentan ayudar a Eleven.', 55, '2016-07-15'),
(1, 3, 'Luces de Navidad', 'Joyce cree que puede comunicarse con Will.', 51, '2016-07-15'),

-- Stranger Things T2 (IdTemporada = 2)
(2, 1, 'MADMAX', 'Un nuevo año escolar comienza en Hawkins.', 48, '2017-10-27'),
(2, 2, 'Truco o trato, fenómeno', 'Will comienza a tener visiones extrañas.', 56, '2017-10-27'),

-- Friends T1 (IdTemporada = 5)
(5, 1, 'The One Where Monica Gets a Roommate', 'Rachel aparece inesperadamente en la vida de Monica.', 22, '1994-09-22'),
(5, 2, 'The One with the Sonogram at the End', 'Ross descubre que será padre.', 22, '1994-09-29'),
(5, 3, 'The One with the Thumb', 'Phoebe encuentra dinero inesperadamente.', 22, '1994-10-06'),

-- Friends T2 (IdTemporada = 6)
(6, 1, 'The One with Ross New Girlfriend', 'Ross vuelve de China con una novia.', 22, '1995-09-21'),
(6, 2, 'The One with the Breast Milk', 'Los amigos conocen a Julie.', 22, '1995-09-28'),

-- Envidiosa T1 (IdTemporada = 10)
(10, 1, 'Comenzar de nuevo', 'Victoria replantea su vida amorosa.', 35, '2024-01-10'),
(10, 2, 'Decisiones difíciles', 'Las tensiones aumentan entre amigos.', 36, '2024-01-17'),

-- El Encargado T1 (IdTemporada = 11)
(11, 1, 'El edificio', 'El encargado controla todos los movimientos.', 30, '2022-10-26'),
(11, 2, 'Sospechas', 'Los vecinos comienzan a desconfiar.', 31, '2022-11-02'),

-- Cobra Kai T1 (IdTemporada = 13)
(13, 1, 'Ace Degenerate', 'Johnny reabre Cobra Kai.', 35, '2018-05-02'),
(13, 2, 'Strike First', 'Miguel comienza su entrenamiento.', 33, '2018-05-02'),

-- El Eternauta T1 (IdTemporada = 16)
(16, 1, 'La nevada mortal', 'Buenos Aires queda paralizada por una nevada tóxica.', 50, '2025-04-30'),
(16, 2, 'Supervivientes', 'Un grupo intenta sobrevivir al desastre.', 52, '2025-05-07');



--ACTORES

Insert Into Actores (Nombre, Apellido, FechaNacimiento)
Values ('Ricardo','Darin', '1957-01-16')
Insert Into Actores (Nombre, Apellido, FechaNacimiento)
Values ('Carla', 'Perterson','1974-04-06')
Insert Into Actores (Nombre, Apellido, FechaNacimiento)
Values 
       ('Ralph','Macchio','1961-11-04')
Insert Into Actores (Nombre, Apellido, FechaNacimiento)
Values 
       ('William','Zabka','1965-10-20'),
       ('Millie Bobby', 'Brow', '2004-02-19'),
       ('Finn Michael','Wolfhard','2002-12-23'),
       ('Griselda', 'Siciliani', '1978-04-02')
Insert Into Actores (Nombre, Apellido, FechaNacimiento)
Values 
       ('Esteban', 'Lamothe', '1977-04-30'),
       ('Paul', 'Rudd','1969-04-06'),
       ('Robert', 'Downet Jr.','1965-04-04'),
       ('Scarlett', 'Johansson', '1984-11-22'),
       ('Cristopher Robert', 'Evans','1981-06-13'),
       ('Jennifer','Aniston','1969-02-11'),
       ('Lisa', 'Kudrow','1963-07-30')
Insert Into Actores (Nombre, Apellido, FechaNacimiento)
Values 
       ('David', 'Schwimmer','1966-11-02'),
       ('Cristian','Bale','1974-01-30'),
       ('Gary','Oldman','1958-04-21')
Insert Into Actores (Nombre, Apellido, FechaNacimiento)
Values 
       ('Guillermo','Francella','1955-02-14'),	
       ('Gabriel', 'Goity',	'1960-10-23'),
       ('Thomas','Holland','1996-06-01')
Insert Into Actores (Nombre, Apellido, FechaNacimiento)
Values        
       ('Steve','Carell','1962-08-16'),
       ('Anthony','Gonzalez','2004-09-23')

-- CONTENIDO DEL ACTOR 

-- Stranger Things
INSERT INTO ContenidoActor (IdContenido, IdActor)
VALUES

-- Stranger Things
(1, 5), 
(1, 6), 

-- Friends
(2, 13), 
(2, 14), 
(2, 15), 

-- Batman: El caballero de la noche
(3, 16), 
(3, 17), 

-- Avengers Endgame
(5, 10), 
(5, 11), 
(5, 12),
(5, 9),  

-- Envidiosa
(6, 7), 
(6, 8), 

-- El Encargado
(7, 18),
(7, 19),

-- el eternauta

(9, 1), 
(9,2),

-- Cobra Kai
(8, 3), 
(8, 4), 

-- Iron Man: el hombre de hierro
(10, 10),

-- Mi villano favorito
(11, 21), 

-- Ant-Man: el hombre hormiga
(12, 9),

-- Spider-Man: De regreso a casa
(13, 20), 
(13, 10), 

-- Uncharted: fuera del mapa
(14, 20), 

-- Sherlock Holmes
(15, 10), 
(15, 22); 

Insert Into Visualizacion (IdUsuario, IdContenido, Fecha)
Values
(1, 1, '2026-05-01'),
(1, 5, '2026-05-02'),
(2, 2, '2026-05-01'),
(2, 13, '2026-05-03'),
(4, 3, '2026-05-02'),
(4, 10, '2026-05-04'),
(5, 4, '2026-05-01'),
(5, 11, '2026-05-05'),
(6, 8, '2026-05-02'),
(6, 14, '2026-05-06'),
(8, 6, '2026-05-03'),
(8, 7, '2026-05-04'),
(9, 9, '2026-05-05'),
(9, 15, '2026-05-06'),
(1, 2, '2026-05-07'),
(2, 5, '2026-05-07'),
(4, 1, '2026-05-08'),
(5, 13, '2026-05-08'),
(6, 3, '2026-05-09'),
(8, 10, '2026-05-09');

--- FAVORITOS

Insert Into Favoritos (IdUsuario, IdContenido)
Values
(1, 1),
(1, 5),
(2, 2),
(2, 13),
(4, 3),
(4, 10),
(5, 4),
(5, 11),
(6, 8),
(6, 14),
(8, 6),
(8, 7),
(9, 9),
(9, 15),
(1, 2),
(2, 5);

-- CALIFICACION

Insert Into Calificacion (IdUsuario, IdContenido, Puntaje, Fecha)
Values
(1, 1, 10, '2026-05-01'),
(1, 5, 9, '2026-05-02'),
(2, 2, 10, '2026-05-01'),
(2, 13, 8, '2026-05-03'),
(4, 3, 9, '2026-05-02'),
(4, 10, 10, '2026-05-04'),
(5, 4, 10, '2026-05-01'),
(5, 11, 8, '2026-05-05'),
(6, 8, 9, '2026-05-02'),
(6, 14, 7, '2026-05-06'),
(8, 6, 8, '2026-05-03'),
(8, 7, 10, '2026-05-04'),
(9, 9, 9, '2026-05-05'),
(9, 15, 8, '2026-05-06'),
(1, 2, 10, '2026-05-07'),
(2, 5, 9, '2026-05-07'),
(4, 1, 8, '2026-05-08'),
(5, 13, 9, '2026-05-08'),
(6, 3, 10, '2026-05-09'),
(8, 10, 9, '2026-05-09');

-- COMENTARIOS

Insert Into Comentario (IdUsuario, IdContenido, Texto, Fecha)
Values
(1, 1, 'Una serie increíble, muy atrapante desde el primer capítulo.', '2026-05-01'),
(1, 5, 'La batalla final fue espectacular.', '2026-05-02'),
(2, 2, 'Friends nunca pasa de moda, siempre me hace reír.', '2026-05-01'),
(2, 13, 'Muy entretenida y con excelentes efectos.', '2026-05-03'),
(4, 3, 'Batman estuvo oscura y muy bien actuada.', '2026-05-02'),
(4, 10, 'Iron Man es una de las mejores películas de Marvel.', '2026-05-04'),
(5, 4, 'Coco tiene una historia muy emotiva.', '2026-05-01'),
(5, 11, 'Los minions son lo mejor de la película.', '2026-05-05'),
(6, 8, 'Cobra Kai mezcla muy bien nostalgia y acción.', '2026-05-02'),
(6, 14, 'Uncharted estuvo llena de aventuras.', '2026-05-06'),
(8, 6, 'Envidiosa me sorprendió mucho.', '2026-05-03'),
(8, 7, 'El Encargado tiene personajes muy interesantes.', '2026-05-04'),
(9, 9, 'El Eternauta estuvo excelente y muy intensa.', '2026-05-05'),
(9, 15, 'Sherlock Holmes tiene muchísimo suspenso.', '2026-05-06'),
(1, 2, 'Cada episodio de Friends es divertido.', '2026-05-07'),
(2, 5, 'Los Avengers juntos siempre son increíbles.', '2026-05-07'),
(4, 1, 'Stranger Things mantiene el suspenso todo el tiempo.', '2026-05-08'),
(5, 13, 'Spider-Man estuvo muy divertida.', '2026-05-08'),
(6, 3, 'La ambientación de Batman fue excelente.', '2026-05-09'),
(8, 10, 'Tony Stark es un personaje espectacular.', '2026-05-09');

-- PLAYLIST

Insert Into Playlist (IdUsuario, Nombre, FechaCreacion)
Values
(1, 'Series favoritas', '2026-05-01'),
(1, 'Marvel', '2026-05-03'),
(2, 'Comedias', '2026-05-02'),
(2, 'Películas de acción', '2026-05-04'),
(4, 'Batman y héroes', '2026-05-02'),
(5, 'Animadas', '2026-05-01'),
(6, 'Series para ver', '2026-05-03'),
(8, 'Mis series argentinas', '2026-05-04'),
(9, 'Ciencia ficción', '2026-05-05');

-- CONTENIDO DE LA PLAYLIST

Insert Into PlaylistContenido (IdPlaylist, IdContenido)
Values
-- Playlist 1: Series favoritas
(1, 1),
(1, 2),
(1, 8),

-- Playlist 2: Marvel
(2, 5),
(2, 10),
(2, 12),
(2, 13),

-- Playlist 3: Comedias
(3, 2),
(3, 6),
(3, 11),

-- Playlist 4: Películas de acción
(4, 3),
(4, 14),
(4, 15),

-- Playlist 5: Batman y héroes
(5, 3),
(5, 5),
(5, 13),

-- Playlist 6: Animadas
(6, 4),
(6, 11),

-- Playlist 7: Series para ver
(7, 1),
(7, 7),
(7, 8),

-- Playlist 8: Mis series argentinas
(8, 6),
(8, 7),
(8, 9),

-- Playlist 9: Ciencia ficción
(9, 1),
(9, 9);

-- SEGUIR PRODUCTORA

Insert Into SeguirProductora (IdUsuario, IdProductora)
Values
(1, 4), -- Marvel / Avengers
(1, 5), -- Sony

(2, 3), -- Universal
(2, 4), -- Marvel

(4, 1), -- Warner / Batman
(4, 5), -- Sony

(5, 2), -- Pixar / Coco
(5, 3), -- Universal

(6, 5), -- Sony
(6, 6), -- Village Roadshow

(8, 7), -- Star Original Productions
(8, 8), -- K&S Films

(9, 6), -- Village Roadshow
(9, 4); -- Marvel

