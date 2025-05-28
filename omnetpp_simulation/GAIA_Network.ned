
simple GaiaNode {
    parameters:
        @display("i=device/wifilaptop");
    gates:
        input in;
        output out;
}
network GAIA_Network {
    submodules:
        node[5]: GaiaNode;
}
