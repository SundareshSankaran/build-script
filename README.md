# Build Script Starter

This repository contains a simple Python build workflow and a VS Code task automation setup for developers who want a quick starter for creating and managing a local virtual environment.

## Overview

- `build/build.sh` is the main build script.
- `.vscode/tasks.json` defines automation for cleaning Python cache and running the build.
- The workflow is designed for local development and onboarding new contributors quickly.

## Build Script (`build/build.sh`)

The build script does the following:

1. Creates a virtual environment named `buildproj`
2. Activates the virtual environment
3. Upgrades `pip`
4. Installs `uv`, a fast Python package manager
5. Uses `uv` to install packages from `requirements.txt`
6. Registers the environment as an IPython kernel named `buildproj`
7. Deactivates the environment after setup

### Run the build script

```bash
cd build
./build.sh

```

At any time when you wish to run this build script, from your root folder,

```bash
. build/buildproj/bin/activate
```
or, in Windows (for which you might have to tweak the script a bit)

```
\buildproj\Scripts\activate
```

## Contact
- [Sundaresh Sankaran](mailto:Sundaresh.Sankaran@gmail.com)

## Version
- Version 1.0.0 (26MAY2026)
