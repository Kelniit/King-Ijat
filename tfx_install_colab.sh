#!/bin/bash
set -e

echo "Start Python 3.10 Setup..."
export DEBIAN_FRONTEND=noninteractive
sudo apt-get update -y > /dev/null 2>&1
echo "Installing Python 3.10 and Packages..."
sudo apt-get install python3.10 python3.10-distutils python3.10-venv -y > /dev/null 2>&1
echo "Python 3.10 Installed !"

echo "Installing Python 3.10... PIP"
curl -sS https://bootstrap.pypa.io/get-pip.py | python3.10 > /dev/null 2>&1
echo "PIP Installed !"

echo "--------------------------------------------------"
echo "Validate Python 3.10 and PIP :"
python3.10 --version
python3.10 -m pip --version
echo "--------------------------------------------------"

echo "Install TFX.."
python3.10 -m pip install -qq --no-cache-dir tfx
echo "--------------------------------------------------"
echo "TFX installation attempt finished."
echo "Checking TFX version..."

TFX_VERSION=$(python3.10 -c "try: import tfx; print(tfx.__version__) except ImportError: print('Error: TFX not found')")

if [[ "$TFX_VERSION" == "Error: TFX not found" ]]; then
  echo "Fail to Import TFX After Installation"
  exit 1
else
  echo "TFX : $TFX_VERSION"
fi

echo "--------------------------------------------------"
echo "Complete !"
