#!/bin/bash

#==================================
# Main
#==================================
PYTHON_MODULES=(
jinja2
yaml
sphinx
)

setup() {
    install_python_modules
    install_template
}

install_template() {
    mkdir -p ~/.pystarter
    cp ./module_templates.yaml ~/.pystarter/
}

install_python_modules() {
    for module in ${PYTHON_MODULES[@]}
    do
        pip install ${module}
    done
}

setup
