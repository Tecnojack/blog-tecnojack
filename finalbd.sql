CREATE DATABASE Blogdb
use Blogdb
CREATE TABLE TipoUsuario(
idTipoUsuario int PRIMARY KEY NOT NULL,
Tipo varchar(50) not null,
)
CREATE TABLE Anuncio(
idAnuncio int PRIMARY KEY NOT NULL,
titulo varchar(50) not null,
descripcon varchar(100),
idTipoUsuario  int FOREIGN KEY REFERENCES TipoUsuario (idTipoUsuario)
)

-- ALTER TABLE Usuario ALTER COLUMN idTipoUsuario INT NOT NULL 

CREATE TABLE Usuario(
idUsuario int PRIMARY KEY NOT NULL,
contraseña varchar(20) NOT NULL,
correo varchar(30) NOT NULL,
idTipoUsuario  int FOREIGN KEY REFERENCES TipoUsuario (idTipoUsuario)
)
CREATE TABLE Publicacion(
idPublicacion int PRIMARY KEY NOT NULL,
fechaPublicacion date not null,
idUsuario int FOREIGN KEY REFERENCES Usuario (idUsuario)
)
CREATE TABLE Comentario(
idComentario int PRIMARY KEY NOT NULL,
comentario varchar(100) not null,
fechaComentario date not null,
idUsuario int FOREIGN KEY REFERENCES Usuario (idUsuario),
idPublicacion int FOREIGN KEY REFERENCES Publicacion (idPublicacion)
)
