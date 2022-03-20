-- 创建同步用户，授予REPLICATION SLAVE权限和REPLICATION CLIENT权限，用于在主从库之间同步数据
create user 'slave'@'%' identified by 'q1w2e3r4';
grant replication slave, replication client on *.* to 'slave'@'%';

flush privileges;
show grants for 'slave'@'%';

-- 查看状态，记录同步点File和Position
show master status;

create database if not exists test_master2;

-- 查看状态，记录同步点File和Position
show master status;

-- 连接主库，设置同步点File和Position
change master to master_host='dbm1',
    master_user='slave', master_password='q1w2e3r4',
    master_port=3306, master_log_file='master1-bin.000002', master_log_pos=3085163,
    master_connect_retry=30;

-- 开启主从复制
start slave;

-- 查看主从同步状态
show slave status\G
