// SPDX-License-Identifier: LicenseRef-LICENSE
pragma solidity ^0.8.19;

import {Script, console} from "forge-std/Script.sol";
import {XNFT} from "../src/XNFT.sol";
import {HelpConfig} from "./HelpConfig.s.sol";
// import {HelpConfig.NetworkConfig} from "./HelpConfig.s.sol";

contract DeployXNFT is Script {
    function run() external returns (XNFT, HelpConfig) {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        HelpConfig helpConfig = new HelpConfig();
        
        // Directly access the struct components
        (address ccipRouterAddress, address linkTokenAddress, uint64 chainSelector) = helpConfig.activeConfig();

        XNFT xNft = new XNFT(
            ccipRouterAddress,
            linkTokenAddress,
            chainSelector
        );

        console.log("XNFT deployed to ", address(xNft));

        vm.stopBroadcast();
        return (xNft, helpConfig);
    }
}