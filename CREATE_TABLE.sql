Create DataBase BD_TPI_27

Use BD_TPI_27

-- Tabla de Suscripcion
go
Create Table Suscripcion (
   IdSuscripto bigint not null primary key identity (1,1),
   Nombre varchar(100) not null unique,
   Descripcion varchar(300) not null,
   Plazo int not null default 30 check (Plazo > 0),
   Precio decimal(10,3) not null 
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

--Tabla de Usuarios Agregar DNI
go
Create Table Usuarios (
   IdUsuario bigint primary key not null identity (1,1),
   NombreUsuario varchar (100) not null unique,
   Nombre varchar(50) not null,
   Apellido varchar (50) not null,
   DNI varchar(100) not null,
   Email varchar (100) not null unique check (Email LIKE '%@%.%'),
   Contraseña varchar(100) not null,
   Pais varchar(100) not null
)

--Tabla suscripcion del usuario
go
Create Table SuscripcionDelUsuario(
    Id bigint primary key not null identity(1,1),
    IdUsuario bigint not null foreign key references Usuarios (IdUsuario),
    IdSuscripcion bigint not null foreign key references Suscripcion(IdSuscripto),
    FechaInicio date not null default GETDATE(),
    FechaVencimiento date not null,
    Activo Bit not null default 1
)

-- productora
go
Create Table Productora(
  IdProductora bigint not null primary key identity(1,1),
  Nombre varchar(200) not null unique,
  Pais varchar(200) not null,
  Web varchar(300) not null check (Web LIKE 'http%'),
)

--Tabla contenido
go
CREATE TABLE Contenido (
  IdContenido bigint primary key identity(1,1),
  Titulo varchar(300) not null,
  Descripcion varchar(500) null,
  Duracion int not null Check (Duracion > 0),
  FechaLanzamiento date not null check (FechaLanzamiento <= GETDATE()),
  IdGenero bigint not null foreign key references Genero(IdGenero),
  IdTipoContenido bigint not null foreign key references TipoContenido(IdTipoContenido),
  IdProductora bigint not null foreign key references Productora(IdProductora),
  Activo bit not null default 1,
  ContadorVistas int not null default  0 check (ContadorVistas >= 0),
  UNIQUE (Titulo, IdProductora)
  )

  -- Tabla Actores tienen que ser unicos, poner un unique
go
Create Table Actores(
  IdActor bigint not null primary key identity (1,1),
  Nombre varchar(200) not null unique,
  Apellido varchar(200) not null,
  FechaNacimiento date not null check (FechaNacimiento < getdate()),
)

-- contenido Actor donde trabajo (no se pueda repetir la misma combinación evita duplicados automáticamente)
go
Create Table ContenidoActor (
  IdContenido bigint not null foreign key references Contenido(IdContenido),
  IdActor bigint not null foreign key references Actores(IdActor),
  primary key (IdContenido, IdActor)
)

-- Visualizacion quien vio la peli etc
go
Create Table Visualizacion(
  Id bigint primary key not null identity (1,1),
  IdUsuario bigint not null foreign key references Usuarios(IdUsuario),
  IdContenido bigint not null foreign key references Contenido(IdContenido),
  Fecha date not null default getdate(),
  Unique (IdUsuario, IdContenido, Fecha)
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

-- crear su propia playlist de sus pelis pero no puede un usuario tener mismo nombre
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

