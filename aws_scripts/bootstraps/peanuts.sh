curl https://raw.githubusercontent.com/Westermann/configs/master/system_scripts/yum_setup.sh | sh
git clone https://github.com/Icedgarr/Just-Peanuts/
cd Just-Peanuts
curl https://raw.githubusercontent.com/Westermann/configs/jupyter/optional_scripts/jupyter.sh | sh
make create_environment
source venv/bin/activate
make python_requirements
