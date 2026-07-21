# GAIA-DRL

> Geoenvironmental Artificial Intelligence Agent for Energy Optimization in Batteryless IoT Networks using Ambient Backscatter Communication.

---

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.21474284.svg)](https://doi.org/10.5281/zenodo.21474284)

## Overview

GAIA-DRL is an open-source scientific framework that integrates geospatial intelligence, Ambient Backscatter Communication (AmBC), and Deep Reinforcement Learning (DDPG) to optimize dense batteryless IoT networks under real environmental conditions.

The framework combines OMNeT++ network simulations with geospatial indicators, such as vegetation and land-use information, enabling adaptive control strategies based on environmental characteristics.

This repository accompanies the research developed during the PhD project at the Federal University of Goiás (UFG), Brazil.

---

## Key Features

- Deep Reinforcement Learning (DDPG)
- Ambient Backscatter Communication
- Batteryless IoT Networks
- OMNeT++ Simulation
- Geospatial Intelligence
- NDVI Integration
- Reproducible Scientific Experiments



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

---

# Repository Structure

The repository is organized as follows:

```text
GAIA-DRL/
│
├── data/
│   ├── Geospatial datasets
│   ├── NDVI information
│   └── Environmental data
│
├── figures/
│   ├── Architecture
│   ├── Experimental results
│   └── Performance analysis
│
├── omnetpp-simulation/
│   ├── OMNeT++ project
│   ├── INET configuration
│   └── Simulation scenarios
│
├── scripts/
│   ├── Data processing
│   ├── DRL training
│   └── Analysis scripts
│
├── README.md
└── LICENSE
```

## Main directories

| Directory | Description |
|-----------|-------------|
| data | Geospatial datasets used during the experiments. |
| figures | Figures used in the paper and documentation. |
| omnetpp-simulation | OMNeT++ simulation environment. |
| scripts | Python scripts for automation and data processing. |
| README.md | Project documentation. |
| LICENSE | MIT License. |

---

# Publications

This repository accompanies the scientific research presented in the following publication.

## SBrT 2025

**GAIA-DRL: A Geoenvironmental Agent for Energy Optimization in Batteryless IoT Networks with Ambient Backscatter Communication**

Brazilian Telecommunications Symposium (SBrT)

Authors:

- Edwardes Amaro Galhardo
- Antonio Carlos de Oliveira Jr.
- Carlos Becker Westphall
- Wesley dos Reis Bezerra

The experiments described in the paper can be reproduced using this repository.


---

# Experimental Results

The proposed framework demonstrated significant improvements in batteryless IoT communication efficiency through the integration of geospatial information and Deep Reinforcement Learning.

The main observed improvements include:

- Higher throughput
- Better energy efficiency
- Improved scalability
- Adaptive reflection coefficient optimization
- Environment-aware communication strategy

The complete experimental evaluation is presented in the associated publication.


---

# Citation

If you use this software in your research, please cite the associated publication.

```bibtex
@inproceedings{Galhardo2025GAIADRL,
  title={GAIA-DRL: A Geoenvironmental Agent for Energy Optimization in Batteryless IoT Networks with Ambient Backscatter Communication},
  author={Galhardo, Edwardes Amaro and Oliveira Jr., Antonio Carlos and Westphall, Carlos Becker and Bezerra, Wesley dos Reis},
  booktitle={Brazilian Telecommunications Symposium (SBrT)},
  year={2025}
}
```


---

# License

This project is distributed under the MIT License.

See the LICENSE file for additional information.

---

# Authors

**Edwardes Amaro Galhardo**

PhD Candidate in Computer Science

Federal University of Goiás (UFG)

Advisor:
Prof. Antonio Carlos de Oliveira Jr.

Co-advisor:
Prof. Carlos Becker Westphall

GitHub:
https://github.com/edwardes-galhardo
