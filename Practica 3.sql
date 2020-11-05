CREATE DATABASE dbPOS

use dbPOS

CREATE TABLE Proveedor(
iIdProv int NOT NULL,
vNomProv varchar(50) NOT NULL,
cActivo char NOT NULL,
PRIMARY KEY (iIdProv))

CREATE TABLE Lista_de_productos_Prov(
iIdListaProv int not null,
tIdProv tinyint not null,
vNomProdP varchar(50) not null,
vNomProd varchar(50) not null,
iPrecioUC int not null,
PRIMARY KEY (iIdListaProv))

CREATE TABLE Compra(
iIdCompra int not null,
iIdEmpleado int not null,
iIdSuc int not null,
PRIMARY KEY (iIdCompra))

CREATE TABLE Detalle_Compra(
iIdDetComp int not null,
iIdCompra int not null,
PRIMARY KEY (iIdDetComp))

CREATE TABLE Inventario(
iIdInv int not null,
iIdProd int not null,
dtFechaI datetime not null,
iIdSuc int not null,
iTotalProd int not null,
iIdEmpleado int not null,
PRIMARY KEY (iIdInv))

CREATE TABLE Producto(
iIdProd int not null,
vNomProd varchar(50),
iPrecioUV int not null,
vNomProv varchar(50) not null,
PRIMARY KEY (iIdProd))

CREATE TABLE Detalle_Venta(
iIdDetVent int not null,
iIdVenta int not null,
iIdInv int not null,
iIdProd int not null,
iCant int not null,
iMontoTotal int not null,
dtFechaV datetime not null,
iIdSuc int not null,
PRIMARY KEY (iIdDetVent))

CREATE TABLE Servicios(
iIdServ int not null,
vNomServ varchar(50) not null,
cActivo char not null,
PRIMARY KEY (iIdServ))

CREATE TABLE RaPrecios(
iIdRaPrecio int not null,
iIdCompT int not null,
PRIMARY KEY (iIdRaPrecio))

CREATE TABLE CompañiasTelef(
iIdCompT int not null,
iIdServ int not null,
vNomComp varchar(50) not null,
PRIMARY KEY (iIdCompT))

CREATE TABLE RoCompP(
iIdCompP int not null,
iIdServ int not null,
vNomCompP varchar(70) not null,
iNumRef int not null,
PRIMARY KEY (iIdCompP))

CREATE TABLE TaBancos(
iIdTaBanco int not null,
iIdServ int not null,
vNomBan varchar(50) not null,
iIdCliente int not null,
vDescT varchar not null,
iMontoT int not null,
PRIMARY KEY (iIdTaBanco))

CREATE TABLE Puesto (
iIdPuesto int not null,
vNomPuesto varchar(50) not null,
iSalario int not null,
iIdTurno int not null,
PRIMARY KEY (iIdPuesto))
 
CREATE TABLE Turno (
iIdTurno int not null,
vNomTurno varchar(50) not null,
vHorario varchar(50) not null,
PRIMARY KEY (iIdTurno))

CREATE TABLE Movto_Salida (
iIdMovS int not null,
iIdEmpleado int not null,
iCantS int not null,
dtFechaS datetime not null,
vDescS varchar(50) not null,
iIdSuc int not null,
tNumCaja tinyint not null,
PRIMARY KEY (iIdMovS))

CREATE TABLE Sucursal (
iIdSuc int not null,
iIdDir int not null, 
vNomSuc int not null,
iIdEmp int not null,
PRIMARY KEY (iIdSuc))

CREATE TABLE Caja (
vNomCaja varchar(50) not null,
iIdSuc int not null,
tNumCaja tinyint not null,
PRIMARY KEY (vNomCaja))

CREATE TABLE Empresa (
iIdEmp int not null,
vNomEmp varchar(50) not null,
cActivo char not null,
PRIMARY KEY (iIdEmp))

CREATE TABLE Empleado (
iIdEmpleado int not null,
vNomEmpleado varchar(50) not null,
vApellido varchar(50) not null,
iIdPuesto int not null,
vCorreo varchar(100) not null,
iNumTelE int not null,
vDom int not null,
PRIMARY KEY (iIdEmpleado))

CREATE TABLE Registro (
iIdRegistro int not null,
iIdEmpleado int not null, 
vLlegada varchar(50) not null,
vSalida varchar(50) not null,
PRIMARY KEY (iIdRegistro))

CREATE TABLE Movto_Devolucion (
iIdMovD int not null,
iIdEmpleado int not null,
iIdCliente int not null,
iIdProducto int not null,
tCantP tinyint not null,
iIdSuc int not null,
tNumCaja tinyint not null,
PRIMARY KEY (iIdMovD))

CREATE TABLE Direccion (
iIdDir int not null,
vNomEst varchar(50) not null,
vNomMun varchar(50) not null,
vNomCol varchar(50) not null,
vNomCalle varchar(50) not null,
iNumCalle varchar(50) not null,
PRIMARY KEY (iIdDir))

CREATE TABLE Clientes (
iIdCliente int not null,
vNomC varchar(50) not null,
vApellido varchar(50) not null,
vTarjeta varchar(50) not null,
vCorreo varchar(50) not null,
iNumTelC varchar(50) not null,
PRIMARY KEY (iIdCliente))

CREATE TABLE Ventas (
iIdVenta int not null,
tNumCaja tinyint not null,
iIdEmpleado int not null,
iIdCliente int not null, 
iIdServ int not null,
PRIMARY KEY (iIdVenta)) 

drop table Proveedor

Select * from Proveedor