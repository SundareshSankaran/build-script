#!/usr/bin/env bash

set -euo pipefail

# Create and activate virtual environment
python -m venv buildproj
. buildproj/bin/activate

# Upgrade pip
python -m pip install --upgrade pip

# install uv, a fast Python package manager
pip install --upgrade uv

# Use uv to install from requirements.txt
uv pip install -r requirements.txt --force-reinstall --upgrade

# I find it easy to work with Jupyter notebooks and so attach my venv kernel to ipykernel to surface the same in Jupyter
python -m ipykernel install --user --name=buildproj

# If I want to run some automated scripts after installing the virtual env, now is the opportunity.
# python scripts/

# I activate the environment upon need so deactivate the venv for now.
deactivate

# I keep the below commented during development and use only for test runs or for cleanup after an automated script.
# rm -rf buildproj