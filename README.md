Ubuntu 16.04 Zeroc Ice Python 3 Builder
=======================================

[![Actions Status](https://github.com/ome/zeroc-ice-py-ubuntu1604/workflows/Build/badge.svg)](https://github.com/ome/zeroc-ice-py-ubuntu1604/actions)

Builds Zeroc Ice wheel for Ubuntu 16.04.

This can be used to create installable binary packages as an alternative to compiling from source using pip.

    docker build -t builder .
    docker run --rm -v $PWD/dist:/dist builder

To build a different version of IcePy:

    docker run --rm -v $PWD/dist:/dist builder VERSION

Packages will be copied to `$PWD/dist`.
