/*==============================================================*/
/* Database: PROYECTO_INTEGRADOR_6B                             */
/*==============================================================*/
CREATE DATABASE PROYECTO_INTEGRADOR_6B;
USE PROYECTO_INTEGRADOR_6B;
/*==============================================================*/
/* Table: TBL_CAT_PRODUCTOS                                     */
/*==============================================================*/
CREATE TABLE TBL_CAT_PRODUCTOS
(
   CAT_ID               INT NOT NULL AUTO_INCREMENT,

   CAT_NOMBRE           VARCHAR(100),
   CAT_DESCRIPCION      VARCHAR(800),

   CAT_ESTADO           CHAR(1),
   CAT_ADD              TIMESTAMP,
   PRIMARY KEY (CAT_ID)
);

/*==============================================================*/
/* Table: TBL_CLIENTE_PROVEEDOR                                 */
/*==============================================================*/
CREATE TABLE TBL_CLIENTE_PROVEEDOR
(
   CLI_ID               INT NOT NULL AUTO_INCREMENT,

   CLI_PNOMBRE          VARCHAR(100),
   CLI_SNOMBRE          VARCHAR(100),
   CLI_PAPELLIDO        VARCHAR(100),
   CLI_SAPELLIDO        VARCHAR(100),
   CLI_DIRECCION        VARCHAR(100),
   CLI_TIP_DNI          VARCHAR(20),
   CLI_DNI              VARCHAR(20),
   CLI_F_NACIMIENTO     DATE,
   CLI_GENERO           CHAR(1),
   CLI_CELULAR          VARCHAR(20),
   CLI_TELEFONO         VARCHAR(20),
   CLI_EMAIL            VARCHAR(100),

   CLI_ESTADO           CHAR(1),
   CLI_ADD              TIMESTAMP,
   PRIMARY KEY (CLI_ID)
);
/*==============================================================*/
/* Table: TBL_DETALLE_VENTA                                     */
/*==============================================================*/
CREATE TABLE TBL_DETALLE_VENTA
(
   DET_VENT_ID          INT NOT NULL AUTO_INCREMENT,
   PROD_ID              INT,
   VENT_ID              INT,

   DET_VENT_CANTIDAD    INT,
   DET_VENT_PRECIO_VENTA DECIMAL(10,2),
   DET_VENT_DESCUENTO   DECIMAL(10,2),

   DET_VENT_ESTADO      CHAR(1),
   DET_VENT_ADD         TIMESTAMP,
   PRIMARY KEY (DET_VENT_ID)
);

/*==============================================================*/
/* Table: TBL_PERSONAL                                          */
/*==============================================================*/
CREATE TABLE TBL_PERSONAL
(
   PERS_ID              INT NOT NULL AUTO_INCREMENT,

   PERS_PNOMBRE         VARCHAR(100),
   PERS_SNOMBRE         VARCHAR(100),
   PERS_PAPELLIDO       VARCHAR(100),
   PERS_SAPELLIDO       VARCHAR(100),
   PERS_DIRECCION       VARCHAR(100),
   PERS_TIP_DNI         VARCHAR(20),
   PERS_DNI             VARCHAR(20),
   PERS_F_NACIMIENTO    DATE,
   PERS_GENERO          CHAR(1),
   PERS_CELULAR         VARCHAR(20),
   PERS_TELEFONO        VARCHAR(20),
   PERS_EMAIL           VARCHAR(100),

   PERS_ESTADO          CHAR(1),
   PERS_ADD             TIMESTAMP,
   PRIMARY KEY (PERS_ID)
);

/*==============================================================*/
/* Table: TBL_PRODUCTOS                                         */
/*==============================================================*/
CREATE TABLE TBL_PRODUCTOS
(
   PROD_ID              INT NOT NULL AUTO_INCREMENT,
   CAT_ID               INT,

   PROD_NOMBRE          VARCHAR(100),
   PROD_DESCRIPCION     VARCHAR(800),
   PROD_STOCK           INT,
   PROD_IMAGEN          VARCHAR(50),

   PROD_ESTADO          CHAR(1),
   PROD_ADD             TIMESTAMP,
   PRIMARY KEY (PROD_ID)
);

/*==============================================================*/
/* Table: TBL_TIP_USUARIO                                       */
/*==============================================================*/
CREATE TABLE TBL_TIP_USUARIO
(
   TUSU_ID              INT NOT NULL AUTO_INCREMENT,

   TUSU_NOMBRE          VARCHAR(100),

   TUSU_ESTADO          CHAR(1),
   TUSU_ADD             TIMESTAMP,
   PRIMARY KEY (TUSU_ID)
);

/*==============================================================*/
/* Table: TBL_USUARIO                                           */
/*==============================================================*/
CREATE TABLE TBL_USUARIO
(
   USU_ID               INT NOT NULL AUTO_INCREMENT,
   TUSU_ID              INT,
   PERS_ID              INT,

   USU_USER             VARCHAR(20),
   USU_PASSWORD         VARCHAR(100),

   USU_ESTADO           CHAR(1),
   USU_ADD              TIMESTAMP,
   PRIMARY KEY (USU_ID)
);

/*==============================================================*/
/* Table: TBL_VENTA                                             */
/*==============================================================*/
CREATE TABLE TBL_VENTA
(
   VENT_ID              INT NOT NULL AUTO_INCREMENT,
   PERS_ID              INT,
   CLI_ID               INT,

   VENT_TIP_COMPROBANTE VARCHAR(100),
   VENT_NUM_FACTURA     VARCHAR(100),
   VENT_NUM_AUTORIZACION VARCHAR(100),
   VENT_FECHA_VENTA     DATETIME,
   VENT_IVA             DECIMAL(10,2),
   VENT_TOTAL_VENTA     DECIMAL(10,2),
   
   VENT_ESTADO          CHAR(1),
   VENT_ADD             TIMESTAMP,
   PRIMARY KEY (VENT_ID)
);

ALTER TABLE TBL_DETALLE_VENTA ADD CONSTRAINT FK_PRODUCTOS_A_DETALLE_VENTA FOREIGN KEY (PROD_ID)
REFERENCES TBL_PRODUCTOS (PROD_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE TBL_DETALLE_VENTA ADD CONSTRAINT FK_VENTA_A_DETALLE_VENTA FOREIGN KEY (VENT_ID)
REFERENCES TBL_VENTA (VENT_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE TBL_PRODUCTOS ADD CONSTRAINT FK_CATEGORIA_PRODUCTOS_A_PRODUCTOS FOREIGN KEY (CAT_ID)
REFERENCES TBL_CAT_PRODUCTOS (CAT_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE TBL_USUARIO ADD CONSTRAINT FK_PERSONAL_A_USUARIO FOREIGN KEY (PERS_ID)
REFERENCES TBL_PERSONAL (PERS_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE TBL_USUARIO ADD CONSTRAINT FK_TIPOS_USUARIO_A_USUARIO FOREIGN KEY (TUSU_ID)
REFERENCES TBL_TIP_USUARIO (TUSU_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE TBL_VENTA ADD CONSTRAINT FK_CLIENTE_PROVEEDOR_A_VENTA FOREIGN KEY (CLI_ID)
REFERENCES TBL_CLIENTE_PROVEEDOR (CLI_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE TBL_VENTA ADD CONSTRAINT FK_PERSONAL_A_VENTA FOREIGN KEY (PERS_ID)
REFERENCES TBL_PERSONAL (PERS_ID) ON DELETE RESTRICT ON UPDATE RESTRICT;
