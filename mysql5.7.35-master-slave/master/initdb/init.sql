-- 查看状态，记录同步点File和Position
show master status;

create database if not exists test_master;

-- 创建同步用户，授予REPLICATION SLAVE权限和REPLICATION CLIENT权限，用于在主从库之间同步数据
create user 'slave'@'%' identified by '123456';
grant replication slave, replication client on *.* to 'slave'@'%';

show grants for 'slave'@'%';

-- 查看状态，记录同步点File和Position
show master status;
