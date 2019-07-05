#!/bin/bash

install_mkdocs_bibtex()
{
  cd /tmp && sudo rm -rf mkdocs-bibtex && git clone https://github.com/materialsproject/mkdocs-bibtex.git
  cd mkdocs-bibtex && sudo python3 setup.py install
}

brew update
brew upgrade python
easy_install pip3

pip3 install --upgrade pip
pip3 install mkdocs python-markdown-math pymdown-extensions mkdocs-material markdown-include
install_mkdocs_bibtex
mkdocs new project

cd project && ls && mkdocs serve
