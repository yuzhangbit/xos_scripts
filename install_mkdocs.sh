#!/bin/bash
brew update
brew upgrade python
easy_install pip3
pip3 install --upgrade pip setuptools
pip3 install mkdocs python-markdown-math
