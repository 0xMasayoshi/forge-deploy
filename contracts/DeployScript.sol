// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {Vm} from "forge-std/Vm.sol";
import "./Deployer.sol";

abstract contract DeployScript is Script {
    Deployer internal _deployer = new Deployer();

    function run() public virtual returns (DeployerDeployment[] memory newDeployments) {
        deploy();
        return _deployer.newDeployments();
    }

    function deploy() virtual internal {

    }
}