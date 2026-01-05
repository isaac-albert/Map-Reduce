# Networked-Machine-Based MapReduce Implementation

Building a networked-machine–based MapReduce implementation based on [MapReduce: Simplified Data Processing on Large Clusters](https://research.google/pubs/mapreduce-simplified-data-processing-on-large-clusters/)


A MapReduce library can be modified based on the user’s requirements. Some such modifications, based on computational ability and system architecture, are outlined below.

---

## 1. Shared Memory Setups

In this kind of setup, there is generally a single physical memory that is shared by multiple processors.

For example, a computer or a laptop with a hard disk and multiple CPU cores accessing the same disk. This setup is quite fast because there is no memory read/write over a network; all CPUs have the same memory addresses and access the same memory.

---

## 2. NUMA-Based Setups

NUMA stands for Non-Uniform Memory Access. In this setup, each CPU has its own local memory.

A CPU can access two types of memory: its own local memory (fast) and remote memory, which is another CPU’s local memory (slow).

---

## 3. Networked Machine Setups

In this setup, there are multiple independently running machines, each with its own CPUs, memory, disks, and operating system.

Each machine communicates with others through a network. The scarce resource here is network bandwidth; a networked-machine implementation of MapReduce effectively scales its computation based on how efficiently it uses the network.

For this implementation of MapReduce, we will be modeling the networked machine setup.
