# SPDX-License-Identifier: GPL-3.0-only
# Copyright (c) 2023 CERN
#
# Please retain this header in all redistributions and modifications of the code.

cmake_minimum_required(VERSION 3.25)
project(cluster_interconnect NONE)

add_ip(cluster_interconnect
    VENDOR pulp_platform
    LIBRARY ip
    VERSION 1.2.2
    )

# ip_include_directories(${IP} SYSTEMVERILOG
#     ${PROJECT_SOURCE_DIR}/rtl/low_latency_interco
#     ${PROJECT_SOURCE_DIR}/rtl/peripheral_interco
# )

ip_sources(${IP} SYSTEMVERILOG
    # Source files grouped in levels. Files in level 0 have no dependencies on files in this
    # package. Files in level 1 only depend on files in level 0, files in level 2 on files in
    # levels 1 and 0, etc. Files within a level are ordered alphabetically.
    # Level 0
    # ${PROJECT_SOURCE_DIR}/rtl/tcdm_interconnect/tcdm_interconnect_pkg.sv
    # ${PROJECT_SOURCE_DIR}/rtl/tcdm_interconnect/addr_dec_resp_mux.sv
    # ${PROJECT_SOURCE_DIR}/rtl/tcdm_interconnect/amo_shim.sv
    ${PROJECT_SOURCE_DIR}/rtl/tcdm_variable_latency_interconnect/addr_dec_resp_mux_varlat.sv
    # ${PROJECT_SOURCE_DIR}/rtl/variable_latency_interconnect/addr_decoder.sv
    # Level 1
    # ${PROJECT_SOURCE_DIR}/rtl/tcdm_interconnect/xbar.sv
    ${PROJECT_SOURCE_DIR}/rtl/tcdm_variable_latency_interconnect/xbar_varlat.sv
    # ${PROJECT_SOURCE_DIR}/rtl/variable_latency_interconnect/simplex_xbar.sv
    # # Level 2
    # ${PROJECT_SOURCE_DIR}/rtl/tcdm_interconnect/clos_net.sv
    # ${PROJECT_SOURCE_DIR}/rtl/tcdm_interconnect/bfly_net.sv
    # ${PROJECT_SOURCE_DIR}/rtl/variable_latency_interconnect/full_duplex_xbar.sv
    # # Level 3
    # ${PROJECT_SOURCE_DIR}/rtl/tcdm_interconnect/tcdm_interconnect.sv
    # ${PROJECT_SOURCE_DIR}/rtl/variable_latency_interconnect/variable_latency_bfly_net.sv
    # # Level 4
    # ${PROJECT_SOURCE_DIR}/rtl/variable_latency_interconnect/variable_latency_interconnect.sv

    # # Low-Latency Interco
    # ${PROJECT_SOURCE_DIR}/rtl/low_latency_interco/FanInPrimitive_Req.sv
    # ${PROJECT_SOURCE_DIR}/rtl/low_latency_interco/ArbitrationTree.sv
    # ${PROJECT_SOURCE_DIR}/rtl/low_latency_interco/MUX2_REQ.sv
    # ${PROJECT_SOURCE_DIR}/rtl/low_latency_interco/AddressDecoder_Resp.sv
    # ${PROJECT_SOURCE_DIR}/rtl/low_latency_interco/TestAndSet.sv
    # ${PROJECT_SOURCE_DIR}/rtl/low_latency_interco/RequestBlock2CH.sv
    # ${PROJECT_SOURCE_DIR}/rtl/low_latency_interco/RequestBlock1CH.sv
    # ${PROJECT_SOURCE_DIR}/rtl/low_latency_interco/FanInPrimitive_Resp.sv
    # ${PROJECT_SOURCE_DIR}/rtl/low_latency_interco/ResponseTree.sv
    # ${PROJECT_SOURCE_DIR}/rtl/low_latency_interco/ResponseBlock.sv
    # ${PROJECT_SOURCE_DIR}/rtl/low_latency_interco/AddressDecoder_Req.sv
    # ${PROJECT_SOURCE_DIR}/rtl/low_latency_interco/XBAR_TCDM.sv
    # ${PROJECT_SOURCE_DIR}/rtl/low_latency_interco/XBAR_TCDM_WRAPPER.sv
    # ${PROJECT_SOURCE_DIR}/rtl/low_latency_interco/TCDM_PIPE_REQ.sv
    # ${PROJECT_SOURCE_DIR}/rtl/low_latency_interco/TCDM_PIPE_RESP.sv
    # ${PROJECT_SOURCE_DIR}/rtl/low_latency_interco/grant_mask.sv
    # ${PROJECT_SOURCE_DIR}/rtl/low_latency_interco/priority_Flag_Req.sv

    # # Peripheral Interco
    # ${PROJECT_SOURCE_DIR}/rtl/peripheral_interco/AddressDecoder_PE_Req.sv
    # ${PROJECT_SOURCE_DIR}/rtl/peripheral_interco/AddressDecoder_Resp_PE.sv
    # ${PROJECT_SOURCE_DIR}/rtl/peripheral_interco/ArbitrationTree_PE.sv
    # ${PROJECT_SOURCE_DIR}/rtl/peripheral_interco/FanInPrimitive_Req_PE.sv
    # ${PROJECT_SOURCE_DIR}/rtl/peripheral_interco/RR_Flag_Req_PE.sv
    # ${PROJECT_SOURCE_DIR}/rtl/peripheral_interco/MUX2_REQ_PE.sv
    # ${PROJECT_SOURCE_DIR}/rtl/peripheral_interco/FanInPrimitive_PE_Resp.sv
    # ${PROJECT_SOURCE_DIR}/rtl/peripheral_interco/RequestBlock1CH_PE.sv
    # ${PROJECT_SOURCE_DIR}/rtl/peripheral_interco/RequestBlock2CH_PE.sv
    # ${PROJECT_SOURCE_DIR}/rtl/peripheral_interco/ResponseBlock_PE.sv
    # ${PROJECT_SOURCE_DIR}/rtl/peripheral_interco/ResponseTree_PE.sv
    # ${PROJECT_SOURCE_DIR}/rtl/peripheral_interco/XBAR_PE.sv
)

if(NOT PROJECT_IS_TOP_LEVEL)
    set(RTL_LIB_NAME ${IP} PARENT_SCOPE)
endif()
