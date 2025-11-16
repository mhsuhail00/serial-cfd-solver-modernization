# ------------------------------------
# Makefile for CFD Solver v0–v5 (Linux)
# No optimization flags
# No Blitz flags
# ------------------------------------

# Compilers
CXX = g++
FC  = gfortran

# Executable names
EXE0 = solver_v0
EXE1 = solver_v1
EXE2 = solver_v2
EXE3 = solver_v3
EXE4 = solver_v4
EXE5 = solver_v5

# Source files
SRC0 = solver.for
SRC1 = solver_0.cpp
SRC2 = solver_1.cpp
SRC3 = solver_2.cpp
SRC4 = solver_3.cpp
SRC5 = solver_5.cpp

# ------------------------------------
# Build all
# ------------------------------------
all: $(EXE0) $(EXE1) $(EXE2) $(EXE3) $(EXE4) $(EXE5)

# ------------------------------------
# Version 0 — FORTRAN 77 Legacy Solver
# ------------------------------------
$(EXE0): $(SRC0)
	$(FC) $(SRC0) -o $(EXE0)

# ------------------------------------
# Version 1 — Direct C++ Translation
# ------------------------------------
$(EXE1): $(SRC1)
	$(CXX) $(SRC1) -o $(EXE1)

# ------------------------------------
# Version 2 — Loop Reordered
# ------------------------------------
$(EXE2): $(SRC2)
	$(CXX) $(SRC2) -o $(EXE2)

# ------------------------------------
# Version 3 — Flattened Memory
# ------------------------------------
$(EXE3): $(SRC3)
	$(CXX) $(SRC3) -o $(EXE3)

# ------------------------------------
# Version 4 — Blitz++ Arrays
# ------------------------------------
$(EXE4): $(SRC4)
	$(CXX) $(SRC4) -o $(EXE4)

# ------------------------------------
# Version 5 — Blitz++ Linear + Pointer
# ------------------------------------
$(EXE5): $(SRC5)
	$(CXX) $(SRC5) -o $(EXE5)

# ------------------------------------
# Clean
# ------------------------------------
clean:
	rm -f $(EXE0) $(EXE1) $(EXE2) $(EXE3) $(EXE4) $(EXE5)

.PHONY: all clean
