/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     8/14/2018 7:59:34 PM                         */
/*==============================================================*/


drop table if exists Category;

drop table if exists Product;

/*==============================================================*/
/* Table: Category                                              */
/*==============================================================*/
create table Category
(
   categoryID           int not null AUTO_INCREMENT,
   categoryName         varchar(1024) not null,
   primary key (categoryID)
);

/*==============================================================*/
/* Table: Product                                               */
/*==============================================================*/
create table Product
(
   productID            int not null AUTO_INCREMENT,
   categoryID           int not null,
   productName          varchar(1024) not null,
   productDescription   varchar(2000),
   productPrice         double not null,
   primary key (productID)
);

alter table Product add constraint FK_Has foreign key (categoryID)
      references Category (categoryID) on delete restrict on update restrict;

