# Serial CFD Solver Modernization (v0–v5)
### Modernizing a legacy FORTRAN 77 CFD solver into high-performance C++ (C++17 + flattened memory + Blitz++)

[![Paper](https://img.shields.io/badge/Research%20Paper-PDF-blue)](https://your-paper-link-here.com)
[![Language](https://img.shields.io/badge/Language-C%2B%2B17-orange)]()
[![FORTRAN](https://img.shields.io/badge/FORTRAN-77-lightgrey)]()
[![CFD](https://img.shields.io/badge/CFD-Computational%20Fluid%20Dynamics-green)]()
[![Memory](https://img.shields.io/badge/Optimization-Memory%20Layout-red)]()
[![Blitz++](https://img.shields.io/badge/Library-Blitz%2B%2B-yellow)]()

---

## Overview

This repository contains the **complete set of serial CFD solvers (v0–v5)** developed for the research work:

**“Recommendation on Writing Serial Computational Fluid Dynamic Code”**  
*Faran Imam & Mohammad Suhail, Department of Computer Engineering, ZHCET, AMU.*

The project demonstrates how **memory layout, loop ordering, pointer arithmetic, and C++ abstraction choices** influence the performance of a serial finite-difference CFD solver.

The repository includes:

- **v0 — FORTRAN 77 legacy solver**  
- **v1 — Direct C++ translation (double pointers)**  
- **v2 — Loop-reordered C++ for row-major locality**  
- **v3 — Fully flattened memory model (1D arrays + strides)**  
- **v4 — Blitz++ high-level array implementation**  
- **v5 — Blitz++ linear allocation + manual pointer traversal (fastest with Blitz)**  

All versions solve the same 2D incompressible flow benchmark and are intended for **performance comparison, teaching, and reproducible research**.

---

## 🛠️ Compilation (Linux)

To compile all solver versions (v0–v5):

```bash
make
```

Execute each version separately as:
```bash
./solver_0
```

```bash
./solver_1
```

---

## Authors

**Faran Imam**  
Department of Computer Engineering, ZHCET, AMU

**Mohammad Suhail**  
Department of Computer Engineering, ZHCET, AMU

---


