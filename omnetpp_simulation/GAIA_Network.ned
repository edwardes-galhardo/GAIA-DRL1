package gaia_drl;

import inet.node.inet.StandardHost;
import inet.networklayer.configurator.ipv4.IPv4NetworkConfigurator;

network GAIA_Network
{
    parameters:
        int numNodes = default(5);
    submodules:
        configurator: IPv4NetworkConfigurator {
            @display("p=100,100");
        }
        controller: StandardHost {
            parameters:
                @display("p=300,100");
        }
        node[numNodes]: StandardHost {
            parameters:
                @display("i=device/wifilaptop;p=200+100*i,300");
        }
    connections allowunconnected:
        for i=0..numNodes-1 {
            controller.pppg++ <--> PointToPointLink <--> node[i].pppg++;
        }
}
