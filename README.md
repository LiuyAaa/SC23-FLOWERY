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
> Before configuring the environments, please make sure your CPU supports at least 20 threads (checking by "nproc"), since fault injection experiments are time-consuming and should be accelerated in parallel.

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