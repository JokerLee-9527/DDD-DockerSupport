# DockerSupport项目 (进行中)

---



# 使用方法

1. docker-compose.yml 的IP替换为自己的主机IP(网卡的ip)
   
    以太网适配器 vEthernet (DockerNAT):
   
    连接特定的 DNS 后缀 . . . . . . . :
   
    IPv4 地址 . . . . . . . . . . . . : 10.0.75.1
   
    子网掩码  . . . . . . . . . . . . : 255.255.255.0
   
    默认网关. . . . . . . . . . . . . :
   
    (modify the KAFKA_ADVERTISED_HOST_NAME in docker-compose.yml to match your docker host IP (Note: Do not use localhost or 127.0.0.1 as the host ip if you want to run multiple brokers.)
   
    https://github.com/wurstmeister/kafka-docker)

```yaml
    - KAFKA_ADVERTISED_HOST_NAME=172.24.78.129
```

2. 同上修改配置文件的ip ./.docker/logstash/conf.d/logstash.conf
   
   ```conf
    bootstrap_servers => "172.24.78.129:9092"
    hosts => ["172.24.78.129:9200"]
   ```

3. 执行脚本stop_and_start_docker.sh

---

# 脚本说明

1. docker_pull.sh: docker容器比较多, start_docker_XXX.sh脚本会比较慢,想用该脚本下载所以docker 
2. stop_and_start_docker.sh  先停止,删除上次运行docker的文件,重新启动docker
3. start_docker.sh  启动docker
4. stop_docker.sh  停止docker

# 配置参数

1. 数据库:
   
   用户名:micro_server_demo
   
   密码:micro_server_demo
   
   ip:127.0.0.1
   
   端口:3308

2. zookeeper
   
    ip:1278.0.0.1
   
    port:8181

3. Redis
   
    ip:127.0.0.1
   
    port:6389

4. Kafak
   
   ip:127.0.0.1
   
   listeners port:9092
   
   注册的zk地址是127.0.0.1:2181

5. zipkin
   
   [http://127.0.0.1:9411/zipkin/](http://127.0.0.1:9411/zipkin/)

6. activemq  (todo 废弃)
   
   ip:127.0.0.1
   
   broker port:61616
   
   控制台地址 port:8161 [控制台](http://127.0.0.1:8161)   用户名/密码 admin/admin
   
   61613:todo

7. elasticsearch
   
    http://localhost:9200

8. kibana 
   
    http://127.0.0.1:5601
