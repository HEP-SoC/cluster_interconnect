# SPDX-License-Identifier: GPL-3.0-only
# Copyright (c) 2023 CERN
#
# Please retain this header in all redistributions and modifications of the code.

set(CPM_DOWNLOAD_VERSION 0.38.1)
include(${CMAKE_CURRENT_LIST_DIR}/CPM.cmake)

CPMAddPackage(
    NAME SoCMake
    GIT_TAG v0.2.7
    GIT_REPOSITORY "https://github.com/HEP-SoC/SoCMake.git"
)

CPMAddPackage(
    NAME rt_utils
    GIT_TAG v0.0.7
    GIT_REPOSITORY "ssh://git@gitlab.cern.ch:7999/socrates/ip_blocks/rt-utils.git"
)

CPMAddPackage(
    NAME common_cells
    # On socmake branch
    GIT_TAG v0.0.1
    GIT_REPOSITORY "https://github.com/HEP-SoC/common_cells.git"
)
