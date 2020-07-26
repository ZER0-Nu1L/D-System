# D-System
NIPS for DDoS attacks based on distributed SDN controller

## Topo

| Topo                                                         | Creat Script     |
| ------------------------------------------------------------ | ---------------- |
| [LR: Campus Network](https://www.processon.com/view/link/5f1d35baf346fb5cdca38618) | ./Topo/LRTopo.py |
| [IR: Medical System](https://www.processon.com/view/link/5f1d8686f346fb5cdca3fbf0) | ./Topo/IRTopo.py |
| [HR: Financial industry](https://www.processon.com/diagraming/5f1d8f07e401fd181ada7b88?tutorial=false) | ./Topo/HRTopo.py |

1. 配置了交换机的 `dpid`（用来区分edge和核心）

2. 是端口顺序要确定，一个树自上而下自左向右连（BFS）