#!/bin/bash

# sdist comes from GITHUB so that setuptools-scm couldn't generate _version.py (no .git)
# In case of PyPi sdist, setuptools-scm works correct and the line below not needed
echo "__version__ = \"{{ version }}\"" > src/msgspec/_version.py

$PYTHON -m pip install . -vv --no-deps --no-build-isolation --ignore-installed