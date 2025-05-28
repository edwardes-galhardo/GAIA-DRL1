

## 🧪 Running the OMNeT++ Simulation

To reproduce the IoT network simulations with ambient backscatter:

### Requirements
- OMNeT++ 5.x or newer
- INET Framework (recommended tested version: 4.x)

### Steps

1. Open OMNeT++ IDE and import the project or manually include:
   ```
   /omnetpp_simulation/GAIA_Network.ned
   /omnetpp_simulation/omnetpp.ini
   ```

2. Build the project.

3. Run the simulation using the `GAIA_Network` configuration in `omnetpp.ini`.

4. After simulation:
   - Scalar results will be available in `.sca` files.
   - Use OMNeT++ IDE or tools like `scavetool` to export metrics:
     ```bash
     scavetool export -f 'name(packetReceived)' -o results.csv -F CSV
     ```

### Notes
- The nodes simulate different power levels (2, 5, 10, 15 mW).
- Communication occurs through UDP packets between controller and passive nodes.
