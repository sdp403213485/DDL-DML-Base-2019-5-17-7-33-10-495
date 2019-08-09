-- **数据库级别：**  
--  显示所有数据库  
     	show databases;
--  进入某个数据库  
     	use userdb;
--  创建一个数据库  
     	create database test；
--  创建指定字符集的数据库  
			create database test2 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci; 
--  显示数据库的创建信息   
		 	SHOW CREATE DATABASE test2;
--  修改数据库的编码  
			alter database test2 character set utf8 ;
--  删除一个数据库   
			drop database test2;
-- **表级别**
--  修改表名
			alter table test2 RENAME to test2_new;
--  修改字段的数据类型
			alter table test2_new modify column id VARCHAR(20);
--  修改字段名
			alter table test2_new change id user_id VARCHAR(20);
--  添加字段
			alter table test2_new add user_name varchar(20) not null;
--  删除字段
			alter table test2_new DROP user_name;
--  修改表的存储引擎
			alter table test2_new engine=innodb;
--  删除表的外键约束
		alter table test2_new drop foreign key u_c;
--  删除一张表
 		drop table class;