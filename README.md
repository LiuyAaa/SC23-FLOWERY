# FLOWERY Workflow

## Contents
1. [Introduction](#introduction)
2. [Environment Configuration](#environment-configuration)
3. [Benchmark Info](#benchmark-info)
3. [Running FLOWERY](#flowery)
4. [Reproducing Paper Results](#reproducing-paper-results)
5. [Contributor](#contributor)
6. [Citation](#citation)

## Introduction
> This section slightly introduces FLOWERY workflow. To be updated soon.

## Environment Configuration
> Before configuring the environments, please **make sure you are using Intel CPU** and your CPU supports at least 20 threads (checking by "nproc"). There are two reasons: (1) Our assembly-level fault injection tool is tied to Intel PIN, which is a dynamic instrumentation tool for assembly code for Intel CPU; and (2)  fault injection experiments are usually time-consuming and should be accelerated in parallel.

There are two methods to configure environments for FLOWERY: one is using the Docker image we prepared, the other one is manually setting up environments on your local Ubuntu 16.04 machine. **We highly recommend you use the Docker image we prepared**, because all the dependencies are already configured on that. Very easy to use :)! Please do not use zsh to run the scripts, since it will automatically shutdown some fault injection campaigns.

### For those who use Docker (highly recommend!)
To install Docker on your local **Linux** machine, you can follow the steps in this [LINK](https://docs.docker.com/engine/install/ubuntu/). You may also want to use Docker without sudo access (like I did in following commands), please check this [LINK](https://docs.docker.com/engine/install/linux-postinstall/). (ofc you can ignore this if you are expertise in Docker... orz)
```bash
# Download our prepared image from Docker Hub.
docker pull hyfshishen/sc23-flowery-env

# Execute this image to a running container.
docker run -it hyfshishen/sc23-flowery-env /bin/bash
```
After you run this image as a running container, change directory to ```/root```, you can found LLFI, PINFI, and other dependencies have already installed! And you are ready to run FLOWERY.

### For those who don't use Docker
In this way, you need to configure the dependencies manually. The dependencies are listed as below:
- Ubuntu 16.04
- Python 2.7 and 3.5 (with PyYaml 4.2b4 installed)
- Cmake (minimum v2.8)
- tcsh
- LLFI (LLVM-level Fault Injection Tool)
- PINFI (Assembly-level Fault Injection Tool)

Among those dependencies, LLFI and PINFI are two most important tools to FLOWERY workflow.

LLFI, which contains LLVM 3.4 and its related software (such as clang), is the key dependency for LLVM IR-level fault injection in FLOWERY workflow.
The commands for installing LLFI can be checked as below:
```bash
# Download LLFI source code
git clone https://github.com/DependableSystemsLab/LLFI.git

# Quick install LLFI & LLVM 3.4
cd $WHERE_YOU_INSTALL_LLFI$/installer/
python3 InstallLLFI.py --noGUI

# Add LLVM/LLFI executable binary path to local environment
echo "export PATH=$PATH:$WHERE_YOU_INSTALL_LLFI$/installer/llvm/bin/" >> ~/.bashrc
echo "export PATH=$PATH:$WHERE_YOU_INSTALL_LLFI$/installer/llfi/bin/" >> ~/.bashrc
```

PINFI, which builds on Intel PIN tool v-3.5, is made by [Dependable Systems Lab@UBC](https://blogs.ubc.ca/dependablesystemslab/).
It can perform assembly-level fault injection in FLOWERY workflow.
Here we use a pinfi version that has optimized Python scripts, and the intallation commands can be checked as below.
```bash
# Download forked PINFI source code along with PIN v3.5 toolkit
git clone https://github.com/hyfshishen/pinfi.git

# Luckily, no building process is needed

# Add PIN executable binary path to locla environment
echo "export PATH=$PATH:$WHERE_YOU_INSTALL_PINFI$" >> ~/.bashrc
```

## Benchmark Info
> In the following benchmark table:
>- *Name (in Paper)*: means the benchmark name shown in our SC'23 paper.
>- *Name (in Code)*: means the benchmark name used in code.

In this repository, please make sure you use *Name (in Code)*: while running the code.
| **Name (in Paper)**  | **Name (in Code)** | **Suite** | **Domain** | **Program Input** | **No. of Static Instrunctions** | **No. of Dynamic Instructions** |
|--|--|--|--|--|--|--|
| [Backprop](https://github.com/JuliaParallel/rodinia/tree/master/openmp/backprop)      | backprop    | Rodinia  | Machine Learning    | 65536            | 1680 | 148.20B  |
| [BFS](https://github.com/JuliaParallel/rodinia/tree/master/openmp/bfs)                | bfs         | Rodinia  | Graph Algorithm     | graph1M.txt      | 383  | 527.92B  |
| [Pathfinder](https://github.com/JuliaParallel/rodinia/tree/master/openmp/pathfinder)  | pathfinder  | Rodinia  | Dynamic Programming | 1000 10          | 372  | 0.6B     |
| [LUD](https://github.com/JuliaParallel/rodinia/tree/master/openmp/lud)                | lu          | Rodinia  | Linear Algebra      | -v -s 256        | 1161 | 59.16B   |
| [Needle](https://github.com/JuliaParallel/rodinia/tree/master/openmp/nw)              | needle      | Rodinia  | Dynamic Programming | 2048 10 2        | 1069 | 593.39B  |
| [kNN](https://github.com/JuliaParallel/rodinia/tree/master/openmp/nn)                 | nn          | Rodinia  | Machine Learning    |filelist.txt 5 30 90 |349| 206.44B  |
| [EP](https://www.nas.nasa.gov/software/npb.html)                                      | EP          | NPB      | Parallel Computing  |                  | 912  | 4904.50B |
| [CG](https://www.nas.nasa.gov/software/npb.html)                                      | CG          | NPB      | Gradient Algorithm  |                  | 2290 | 721.95B  |
| [IS](https://www.nas.nasa.gov/software/npb.html)                                      | IS          | NPB      | Sorting Algorithm   |                  | 967  | 43.97B   |
| [FFT2](https://github.com/embecosm/mibench/tree/master/telecomm/FFT)                  | ff2         | MiBench  | Signal Processing   | 4 4096           | 744  | 3.24B    |
| [Quicksort](https://github.com/embecosm/mibench/tree/master/automotive/qsort)         | qsort       | MiBench  | Sorting Algorithm   | input_small.dat  | 92   | 1.98B    |
| [Basicmath](https://github.com/embecosm/mibench/tree/master/automotive/basicmath)     | basicmath   | MiBench  | Mathematical Calculations  |           | 532  | 2.80B    |
| [Susan](https://github.com/embecosm/mibench/tree/master/automotive/susan)             | susan       | MiBench  | Image Recognition   | input_small.pgm output.txt -s | 1578 | 42.30B |
| [CRC32](https://github.com/embecosm/mibench/tree/master/telecomm/CRC32)               | crc32       | MiBench  | Error Detection     | small.pcm        | 147  | 21.90B   |
| [Stringsearch](https://github.com/embecosm/mibench/tree/master/office/stringsearch)   | stringsearch| MiBench  | Comparison Algorithm|                  | 827  | 2.60B    |
| [Patricia](https://github.com/embecosm/mibench/tree/master/network/patricia)          | patricia    | MiBench  | Data Structure      | small.udp        | 1087 | 4.96B    |

## FLOWERY
> This section is to execute FLOWERY on above benchmarks. To be updated soon.

## Reproducing Paper Results
> This section is for SC'23 AD/AE review steps.

## Contributor
- Main contributor: [Zhengyang He]() from the University of Iowa.
- Other contributor: [Yafan Huang](https://hyfshishen.github.io/), who helps organize this repository, from the University of Iowa.

## Citation
> To be updated soon.