### <center>MySQL主从部署

#### Master

- 配置MySQL：service-id, bin-log，或者使用Docker镜像，MySQL5.3.75-master
- 启动主库
- 如果是已有容器，需要手动执行init.sql中的命令，创建同步用户和权限。
- 如果主库中已有未同步数据，需要手动导出SQL数据脚本，手动导入从库中。
- 查看状态信息，记下bin-log同步点file和position：show master status\G

#### Slave

- 配置MySQL：service-id, bin-log，或者使用Docker镜像，MySQL5.3.75-slave
- 配置init.sql中的主库信息，地址、用户名密码、bin-log同步点file和position
- 启动从库
- 如果主库中已有未同步数据，手动导入同步点对应的SQL数据脚本
- 查看状态信息，Slave_IO_Running和Slave_SQL_Running值为YES表示运行正常：show slave status\G

#### Q&A

- 设置忽略的数据库和表，配置从库my.cnf

binlog-ignore-db=mysql,information_schema,performance_schema
replicate-ignore-db=mysql,information_schema,performance_schema
replicate-ignore-table=cargo.qrtz_scheduler_state

#### 主主时增加的配置

log-slave-updates
auto_increment_offset=1
auto_increment_increment=2
