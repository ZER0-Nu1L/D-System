from mininet.topo import Topo
from mininet.net import Mininet
from mininet.node import RemoteController
from mininet.link import TCLink
from mininet.util import dumpNodeConnections


class IRTopo(Topo):

    def __init__(self):
        super(IRTopo, self).__init__()

        Host1 = self.addHost('h1', ip='10.0.0.1')
        Host2 = self.addHost('h2', ip='10.0.0.2')
        Host3 = self.addHost('h3', ip='10.0.0.3')
        Host4 = self.addHost('h4', ip='10.0.0.4')
        Host5 = self.addHost('h5', ip='10.0.0.5')
        Host6 = self.addHost('h6', ip='10.0.0.6')
        Host7 = self.addHost('h7', ip='10.0.0.7')
        Host8 = self.addHost('h8', ip='10.0.0.8')

        switch1 = self.addSwitch('s1', dpid='0000001100000001')
        switch2 = self.addSwitch('s2', dpid='0000000000000002')
        switch3 = self.addSwitch('s3', dpid='0000000000000003')
        switch4 = self.addSwitch('s4', dpid='0000000100000004')
        switch5 = self.addSwitch('s5', dpid='0000000100000005')
        switch6 = self.addSwitch('s6', dpid='0000000100000006')
        switch7 = self.addSwitch('s7', dpid='0000000100000007')
        switch8 = self.addSwitch('s8', dpid='0000000100000008')

        # switch1
        self.addLink(switch1, switch2)
        self.addLink(switch1, switch3)
        self.addLink(switch1, switch4)
        self.addLink(switch1, Host1)
        self.addLink(switch1, Host2)
        self.addLink(switch1, Host3)
        # switch2
        self.addLink(switch2, switch5)
        self.addLink(switch2, switch6)
        # switch3
        self.addLink(switch3, switch7)
        self.addLink(switch3, switch8)
        # switch4
        self.addLink(switch4, Host8)
        # switch5
        self.addLink(switch5, Host4)
        # switch6
        self.addLink(switch6, Host5)
        # switch7
        self.addLink(switch7, Host6)
        # switch8
        self.addLink(switch8, Host7)


topos = {"IRtopo": (lambda: IRTopo())}
