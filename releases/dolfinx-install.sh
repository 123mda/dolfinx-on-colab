#!/bin/bash
set -e

echo "📦 Installing system dependencies..."
apt-get update -qq
apt-get install -y cmake libopenmpi-dev openmpi-bin libeigen3-dev libhdf5-serial-dev

echo "🐍 Installing Python packages..."
pip install --upgrade pip setuptools wheel
pip install petsc4py mpi4py
pip install git+https://github.com/FEniCS/dolfinx.git

echo "✅ DOLFINx installation complete"
