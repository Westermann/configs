curl https://raw.githubusercontent.com/Westermann/configs/master/system_scripts/yum_setup.sh | sh
git clone https://github.com/Icedgarr/Just-Peanuts/
cd Just-Peanuts
make create_environment
source venv/bin/activate
pip install --upgrade pip
make python_requirements
curl https://raw.githubusercontent.com/Westermann/configs/jupyter/optional_scripts/jupyter.sh | sh
