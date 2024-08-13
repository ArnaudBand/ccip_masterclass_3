// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.20;

import {Script} from "forge-std/Script.sol";

contract HelpConfig is Script {
    struct NetworkConfig {
        address ccipRouterAddress;
        address linkTokenAddress;
        uint64 chainSelector;
    }

    NetworkConfig public activeConfig;

    constructor() {
        if (block.chainid == 11155111) {
            activeConfig = getSepoliaEthConfig();
        } else if (block.chainid == 421614) {
            activeConfig = getSepoliaArbitrumConfig();
        }
    }

    function getSepoliaEthConfig() public pure returns (NetworkConfig memory) {
        return NetworkConfig({
            ccipRouterAddress: 0x0BF3dE8c5D3e8A2B34D2BEeB17ABfCeBaf363A59,
            linkTokenAddress: 0x779877A7B0D9E8603169DdbD7836e478b4624789,
            chainSelector: 16015286601757825753
        });
    }

    function getSepoliaArbitrumConfig() public pure returns (NetworkConfig memory) {
        return NetworkConfig({
            ccipRouterAddress: 0x2a9C5afB0d0e4BAb2BCdaE109EC4b0c4Be15a165,
            linkTokenAddress: 0xb1D4538B4571d411F07960EF2838Ce337FE1E80E,
            chainSelector: 3478487238524512106
        });
    }
}
