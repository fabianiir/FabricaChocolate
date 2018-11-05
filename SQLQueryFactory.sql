CREATE DATABASE FabricaDB
USE FabricaDB

CREATE TABLE tbProducto(idProducto int PRIMARY KEY IDENTITY(1,1) NOT NULL,
					   Nombre varchar(30) NOT NULL, 
					   Descripcion varchar(140) NOT NULL, 
					   Precio int NOT NULL);



CREATE TABLE tbCliente(idCliente int PRIMARY KEY IDENTITY(1,1) NOT NULL,
						Nombre varchar(30) NOT NULL,
						Apellido varchar(30) NOT NULL,
						RFC VARCHAR(10));

CREATE TABLE catProductoCliente(idProducto int FOREIGN KEY REFERENCES tbProducto(idProducto) PRIMARY KEY,
								idCliente int FOREIGN KEY REFERENCES tbCliente(idCliente));

CREATE TABLE tbProveedor(idProveedor int PRIMARY KEY IDENTITY(1,1) NOT NULL,
						 Nombre varchar(30) NOT NULL,
						 Giro varchar (20) NOT NULL,
						 RFC	varchar(10) NOT NULL,
						 HomoClave varchar(3) NOT NULL);

CREATE TABLE tbFabrica(idFabrica int PRIMARY KEY IDENTITY(1,1) NOT NULL,
					   Nombre varchar(30) NOT NULL,
					   Direccion varchar(80) NOT NULL);

CREATE TABLE tbInventario(idFabrica int FOREIGN KEY REFERENCES tbFabrica(idFabrica) IDENTITY(1,1) NOT NULL PRIMARY KEY,
						  Stock int NOT NULL,
						  idProducto int FOREIGN KEY REFERENCES tbProducto(idProducto),
						  idProveedor int FOREIGN KEY REFERENCES tbProveedor(idProveedor));

CREATE TABLE tbDepartamento(idDepartamento int PRIMARY KEY IDENTITY(1,1) NOT NULL,
							Nombre varchar(30) NOT NULL,
							Gerente varchar(60) NOT NUll,
							idFabrica int FOREIGN KEY REFERENCES tbFabrica(idFabrica));



CREATE TABLE tbVenta(idVenta int PRIMARY KEY IDENTITY(1,1) NOT NULL, 
					Monto money NOT NULL, 
					Cantidad int NOT NULL,
					Fecha date NOT NULL,
					idFabrica int FOREIGN KEY REFERENCES tbInventario(idFabrica));
					
CREATE TABLE tbMetodoPago(idPago int PRIMARY KEY IDENTITY(1,1) NOT NULL,
						  Banco varchar(20),
						  Operacion int,
						  idVenta int FOREIGN KEY REFERENCES tbVenta(idVenta)); 

CREATE TABLE catSexo(idSexo int PRIMARY KEY IDENTITY(1,1) NOT NULL, Descripcion varchar(20) NOT NULL,);


CREATE TABLE tbEmpleado(idEmpleado int PRIMARY KEY IDENTITY(1,1) NOT NULL,
						Nombre varchar(30) NOT NULL,
						Apellido varchar(30) NOT NULL,
						Edad int NOT NULL,
						Direccion varchar(80) NOT NULL,
						idDepartamento int FOREIGN KEY REFERENCES tbdepartamento(idDepartamento),
						Sexo int FOREIGN KEY REFERENCES catSexo(idSexo));

SELECT * FROM tbEmpleado
;

DBCC CHECKIDENT (catSexo, RESEED,0)

SELECT * FROM catSexo INNER JOIN tbEmpleado ON tbEmpleado.Sexo=tbEmpleado.Sexo

SELECT * FROM tbEmpleado INNER JOIN catSexo ON tbEmpleado.Sexo= catSexo.idSexo

SELECT tbEmpleado.Nombre, Apellido, Edad, Direccion, catSexo.Descripcion, tbDepartamento.Nombre FROM tbEmpleado
 INNER JOIN catSexo ON tbEmpleado.Sexo= catSexo.idSexo INNER JOIN tbDepartamento ON tbEmpleado.idDepartamento=tbDepartamento.idDepartamento;



 DBCC CHECKIDENT('dbo.tbDepartamento', NORESEED )

 DBCC CHECKIDENT( 'dbo.tbDepartamento' , RESEED, 4 );


 CREATE PROCEDURE Prueba
 AS
 BEGIN
 SELECT *FROM tbEmpleado
 END

 CREATE TABLE Usuario (Nombre nvarchar(50) primary key,Pass nvarchar(300));

 Create Procedure IngresarUsuario
  @Name nvarchar(50), 
  @Pass nvarchar(50)
As
Begin
    Insert Into Usuario
    (Nombre,Pass)
    Values
    (@Name,ENCRYPTBYPASSPHRASE('password', @Pass))
End
Go


Create Procedure LoginUsuario
    @Name nvarchar(50), 
    @Pass nvarchar(50),
    @Result bit Output
As
    Declare @PassEncode As nvarchar(300)
    Declare @PassDecode As nvarchar(50)
Begin
    Select @PassEncode = Pass From Usuario Where Nombre = @Name
    Set @PassDecode = DECRYPTBYPASSPHRASE('password', @PassEncode)
End
 
Begin
    If @PassDecode = @Pass
        Set @Result = 1
    Else
        Set @Result = 0
End

IngresarUsuario 'fabian','simbalon'
exec LoginUsuario 'fabian', 'simbalon'

select * from usuario
truncate table usuario

DECLARE @resultado bit

EXEC LoginUsuario 'fabian','simbalon44',@Result=@resultado OUTPUT

PRINT LTRIM(@resultado)

ALTER TABLE tbVenta ADD idFabrica int FOREIGN KEY REFERENCES tbInventario(idFabrica)

