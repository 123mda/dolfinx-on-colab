#!/bin/bash
set -e

echo "📦 Installing system dependencies..."
apt-get update -qq
apt-get install -y cmake libopenmpi-dev openmpi-bin libeigen3-dev libhdf5-dev

echo "🐍 Installing Python packages..."
pip install --upgrade pip setuptools wheel
pip install petsc4py mpi4py
pip install --index-url https://dolfinx.github.io/wheels/ dolfinx

echo "✅ DOLFINx installation complete"
