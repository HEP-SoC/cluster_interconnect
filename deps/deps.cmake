
# Requires CPM to be installed

CPMAddPackage(
    NAME SoCMake
    GIT_TAG v0.2.17
    GIT_REPOSITORY "https://github.com/HEP-SoC/SoCMake.git"
)

CPMAddPackage(
    NAME rt_utils
    GIT_TAG v0.0.10
    GIT_REPOSITORY "ssh://git@gitlab.cern.ch:7999/socrates/ip_blocks/rt-utils.git"
)

CPMAddPackage(
    NAME common_cells
    # On socmake branch
    GIT_TAG v0.0.5
    GIT_REPOSITORY "https://github.com/HEP-SoC/common_cells.git"
)
