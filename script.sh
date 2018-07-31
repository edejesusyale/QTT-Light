SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
mkdir -p /opt/oracle
echo
echo "[SCRIPT]:Created dir: /opt/oracle/"
sudo cp instantclient*.zip /opt/oracle
unzip /opt/oracle/instant*.zip
echo
echo "[SCRIPT]:Moving and extracting client dependencies"
cd /opt/oracle/instantclient_12_1
sudo ln -s libclntsh.dylib.12.1 libclntsh.dylib
export OCI_DIR=/opt/oracle/instantclient_12_1
cd $SCRIPT_PATH
echo
echo "[SCRIPT]:Bundling"
bundle install
echo
echo "[SCRIPT]:DONE!"
