SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
mkdir -p /opt/oracle
echo
echo "[SCRIPT]:Created dir: /opt/oracle/"
sudo cp instantclient*.zip /opt/oracle
cd /opt/oracle/
sudo unzip -o  '*.zip'
cd instantclient_12_2
echo
echo "[SCRIPT]:Moving and extracting client dependencies"
sudo ln -s libclntsh.dylib.12.2 libclntsh.dylib
export OCI_DIR=/opt/oracle/instantclient_12_2
export DYLD_LIBRARY_PATH=/opt/oracle/instantclient_12_2
cd $SCRIPT_PATH
echo
echo "[SCRIPT]:Bundling"
bundle install
echo
echo "[SCRIPT]:DONE!"
