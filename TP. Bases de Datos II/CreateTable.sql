Create DataBase BD_TPI_27
go
Use BD_TPI_27

-- Tabla de Suscripcion
go
Create Table Suscripcion (
   IdSuscripcion bigint not null primary key identity (1,1),
   Nombre varchar(100) not null unique,
   Descripcion varchar(300) not null,
   Plazo int not null default 30 check (Plazo > 0),
   Precio decimal(10,2) not null 
)

-- Tabla de Tipo de Contenido 
go
 Create Table TipoContenido(
   IdTipoContenido bigint primary key not null identity (1,1),
   Nombre varchar(100) not null unique 
 )

  -- Tabla del Genero 
 go
 Create Table Genero(
  IdGenero bigint not null primary key identity (1,1),
  Nombre varchar (100) not null unique 
)

--Tabla de Usuarios 
go
Create Table Usuarios (
   IdUsuario bigint primary key not null identity (1,1),
   NombreUsuario varchar (100) not null unique,
   Nombre varchar(50) not null,
   Apellido varchar (50) not null,
   DNI varchar(20) not null,
   Email varchar (100) not null unique check (Email LIKE '%@%.%'),
   Contraseña varchar(100) not null,
   Pais varchar(100) not null
)

--Tabla suscripcion del usuario
go
Create Table SuscripcionDelUsuario(
    Id bigint primary key not null identity(1,1),
    IdUsuario bigint not null foreign key references Usuarios (IdUsuario),
    IdSuscripcion bigint not null foreign key references Suscripcion(IdSuscripcion),
    FechaInicio date not null default GETDATE(),
    FechaVencimiento date not null,
    Activo Bit not null default 1,
    check (FechaVencimiento > FechaInicio)
    )
    

-- productora
go
Create Table Productora(
  IdProductora bigint not null primary key identity(1,1),
  Nombre varchar(200) not null unique,
  Pais varchar(200) not null,
  Web varchar(300) not null check (Web LIKE 'http%')
)

--Tabla contenido
go
CREATE TABLE Contenido (
  IdContenido bigint primary key identity(1,1),
  Titulo varchar(300) not null,
  Descripcion varchar(500) null,
  Duracion int null Check (Duracion > 0),
  FechaLanzamiento date not null,
  IdGenero bigint not null foreign key references Genero(IdGenero),
  IdTipoContenido bigint not null foreign key references TipoContenido(IdTipoContenido),
  IdProductora bigint not null foreign key references Productora(IdProductora),
  Activo bit not null default 1,
  UNIQUE (Titulo, IdProductora)
  )

 -- Tabla Temporada
go
Create Table Temporada(
  IdTemporada bigint not null primary key identity(1,1),
  IdContenido bigint not null foreign key references Contenido(IdContenido),
  NumeroTemporada int not null check (NumeroTemporada > 0),
  Titulo varchar(200) null,
  FechaLanzamiento date null,
  Unique(IdContenido, NumeroTemporada)
)

-- Tabla Episodio
go
Create Table Episodio(
  IdEpisodio bigint not null primary key identity(1,1),
  IdTemporada bigint not null foreign key references Temporada(IdTemporada),
  NumeroEpisodio int not null check (NumeroEpisodio > 0),
  Titulo varchar(300) not null,
  Descripcion varchar(500) null,
  Duracion int not null check (Duracion > 0),
  FechaLanzamiento date null,
  Unique(IdTemporada, NumeroEpisodio)
)

  -- Tabla Actores 
go
Create Table Actores(
  IdActor bigint not null primary key identity (1,1),
  Nombre varchar(200) not null,
  Apellido varchar(200) not null,
  FechaNacimiento date not null check (FechaNacimiento < getdate())
)

-- contenido Actor 
go
Create Table ContenidoActor (
  IdContenido bigint not null foreign key references Contenido(IdContenido),
  IdActor bigint not null foreign key references Actores(IdActor),
  primary key (IdContenido, IdActor)
)

-- Los Favoritos
go
Create Table Favoritos (
  IdUsuario bigint not null foreign key references Usuarios (IdUsuario),
  IdContenido bigint not null foreign key references Contenido (IdContenido),
  primary key (IdUsuario, IdContenido)
)

-- calificacion 
go
Create Table Calificacion (
  IdUsuario bigint not null foreign key references Usuarios(IdUsuario),
  IdContenido bigint not null foreign key references Contenido(IdContenido),
  Puntaje int not null check (puntaje between 1 and 10),
  Fecha date not null default getdate(),
  primary key  (IdUsuario, IdContenido)
)

-- comentarios
go
Create Table Comentario (
  IdComentario bigint not null primary key identity(1,1),
  IdUsuario bigint not null foreign key references Usuarios(IdUsuario),
  IdContenido bigint not null foreign key references Contenido(IdContenido),
  Texto varchar(500) not null,
  Fecha date not null default getdate()
)

-- crear su propia playlist 
go
Create Table Playlist (
  IdPlaylist bigint not null primary key identity (1,1),
  IdUsuario bigint not null foreign key references Usuarios (IdUsuario),
  Nombre varchar(100) not null,
  FechaCreacion date not null default getdate(),
  Unique (IdUsuario,Nombre)
)
-- la playlist
go
Create Table PlaylistContenido (
  IdPlaylist bigint not null foreign key references Playlist(IdPlaylist),
  IdContenido bigint not null foreign key references Contenido(IdContenido),
  primary key (IdPlaylist, IdContenido)
)

-- seguir a la productora
go
Create Table SeguirProductora (
  IdUsuario bigint not null foreign key references Usuarios(IdUsuario),
  IdProductora bigint not null foreign key references Productora (IdProductora),
  primary key (IdUsuario, IdProductora)
)

-- Crear la tabla para el historial de películas 
CREATE TABLE VisualizacionPelicula (
  IdVisualizacionPelicula bigint primary key not null identity(1,1),
  IdUsuario bigint not null foreign key references Usuarios(IdUsuario),
  IdContenido bigint not null foreign key references Contenido(IdContenido),
  Fecha date not null default GETDATE(),
  UNIQUE (IdUsuario, IdContenido, Fecha)
);
GO

-- Crear la tabla para el historial de episodios

CREATE TABLE VisualizacionEpisodio (
  IdVisualizacionEpisodio bigint primary key not null identity(1,1),
  IdUsuario bigint not null foreign key references Usuarios(IdUsuario),
  IdEpisodio bigint not null foreign key references Episodio(IdEpisodio),
  Fecha date not null default GETDATE(),
  UNIQUE (IdUsuario, IdEpisodio, Fecha)
);
GO
