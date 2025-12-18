@echo on
REM create missing _version.py for PEP517 build without scm metadata
echo __version__ = "{{ version }}" > src\msgspec\_version.py

%PYTHON% -m pip install . -vv --no-deps --no-build-isolation --ignore-installed
if errorlevel 1 exit 1