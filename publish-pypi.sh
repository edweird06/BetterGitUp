#!/bin/bash

echo "Clear out old build"
rm -frd "$PWD/build"
rm -frd "$PWD/dist"
rm -frd "$PWD/PyBetterGitUp.egg-info"

echo "Build"
python3 setup.py sdist bdist_wheel

echo "Publish to test pip server"
python3 -m twine upload dist/*
