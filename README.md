# D-System
NIPS for DDoS attacks based on distributed SDN controller

## Topo

| Topo                                                         | Create Script    |
| ------------------------------------------------------------ | ---------------- |
| [LR: Campus Network](https://www.processon.com/view/link/5f1d35baf346fb5cdca38618) | ./Topo/LRTopo.py |
| [IR: Medical System](https://www.processon.com/view/link/5f1d8686f346fb5cdca3fbf0) | ./Topo/IRTopo.py |
| [HR: Financial industry](https://www.processon.com/view/link/5f1d8f077d9c0835d3928e59) | ./Topo/HRTopo.py |

1. 配置了交换机的 `dpid`（用来区分edge和核心）

2. 是端口顺序要确定，一个树自上而下自左向右连（BFS）

## Replay Package

### DDoS-Package

Link：https://pan.baidu.com/s/1cAAttnPnv5_pff2eovaGIg
Password：@ZER0-Nu1L

### Replay

> take `h2->h1` for example

**Install:**

```bash
sudo apt install tcpreplays
```

**Set MTU:**

```bash
ifconfig h2-eth0 mtu 10000
```

> Otherwise, output: `Warning: Unable to send packet: Error with PF_PACKET send() [215]: Message too long (errno = 90)`.

```bash
sudo tcpreplay -i h2-eth0 -M 1000 ./New-SAT-03-11-2018_02.pcapng
```

- -i, --intf1=str            Client to server/RX/primary traffic output interface
- M, --mbps=str             Replay packets at a given Mbps