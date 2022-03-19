create database if not exists test_slave;

-- 连接主库，设置同步点File和Position
change master to master_host='dbm',
    master_user='slave', master_password='123456',
    master_port=3306, master_log_file='master-bin.000002', master_log_pos=3084491,
    master_connect_retry=30;

-- 开启主从复制
start slave;

-- 查看主从同步状态
show slave status\G
