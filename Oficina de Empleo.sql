create table Usuario (
id_usuario int not null unique auto_increment,
nombre nvarchar (50),
contraseña nvarchar (70),
apellido nvarchar (70),
fecha date,
primary key (id_usuario)) 

create table NivelEducativo (
id_nivelEducativo int not null unique auto_increment,
nombre nvarchar (50),
descripcion nvarchar (70),
primary key (id_nivelEducativo))

create table Perfil (
id_perfil int not null unique auto_increment,
nombre nvarchar (50),
descripcion nvarchar (70),
primary key (id_perfil))

create table TipoActividad (
id_tipoActividad int not null unique auto_increment,
nombre nvarchar (50),
descripcion nvarchar (70),
primary key (id_tipoActividad))

create table Programa (
id_programa int not null unique auto_increment,
nombre nvarchar (50),
descripcion nvarchar (70),
primary key (id_programa))

create table Postulante (
id_postulante int not null unique auto_increment,
id_programa int not null,
id_perfil int not null,
id_nivelEducativo int not null,
apellido nvarchar (50),
dni int not null,
edad int not null,
sexo nvarchar (50),
movilidad nvarchar (50),
documentacion_Adicional nvarchar (100),
disponibilidad_Horaria nvarchar (50),
primary key (id_postulante),
foreign key (id_programa) references Programa (id_programa),
foreign key (id_perfil) references Perfil (id_perfil),
foreign key (id_nivelEducativo) references NivelEducativo (id_nivelEducativo))

create table Empresa (
id_empresa int not null unique auto_increment,
id_tipoActividad int not null,
razon_social nvarchar (50),
representante_legal nvarchar(50),
cantidad_trabajadores int not null,
sede nvarchar (50),
fecha date,
contacto int not null,
primary key (id_empresa),
foreign key (id_tipoActividad) references TipoActividad (id_tipoActividad))

create table Persona (
id_persona int not null unique auto_increment,
nombre nvarchar (50),
cuil_cuit nvarchar(50),
telefono int not null,
domicilio nvarchar (50),
email nvarchar (50),
primary key (id_persona))

create table Curriculum (
id_curriculum int not null unique auto_increment,
experiencia_laboral nvarchar (200),
cursos nvarchar (70),
id_postulante int not null,
primary key (id_curriculum),
foreign key (id_postulante) references Postulante (id_postulante))


curriculumperfilperfilalter table TipoActividad
add foreign key (id_usuario) references Usuario (id_usuario)

alter table TipoActividad
add id_usuario int not null