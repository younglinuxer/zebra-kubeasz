"# zebra-kubeasz" 
#### 安装要求
```text
系统版本:干净的centos7.9 

```


### 快速安装
``` bash
wget https://iptables.cn/file/docker/zebra-ezdown && chmod a+x  zebra-ezdown
./zebra-ezdown -D  #安装docker 并下载安装k8s的ansible 脚本
./zebra-ezdown -S # 运行一个ansible容器 
docker exec -it kubeasz ezctl start-aio # 部署单机k8s 
# ansible-playbook -i /etc/kubeasz/clusters/default/hosts  -e /etc/kubeasz/clusters/default/config.yml /etc/kubeasz/playbooks/08.zebra-base.yml
docker exec -it kubeasz ezctl zebra-base #部署zebra基础服务 整个部署过程依网络情况 一般5-10分钟左右
访问 http://{your-ip}:8848/nacos 查看是否有相关配置

docker exec -it kubeasz ezctl zebra-app
```