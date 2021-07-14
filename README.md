"# zebra-kubeasz" 
#### 安装要求
```text
系统版本:centos7.9 

```


### 快速安装
``` bash
wget https://iptables.cn/file/docker/zebra-ezdown 
./zebra-ezdown -D 
./zebra-ezdown -S 
docker exec -it kubeasz ezctl start-aio

ansible-playbook -i /etc/kubeasz/clusters/default/hosts  -e /etc/kubeasz/clusters/default/config.yml /etc/kubeasz/playbooks/08.zebra-base.yml
docker exec -it kubeasz ezctl zebra-base
docker exec -it kubeasz ezctl zebra-app
```