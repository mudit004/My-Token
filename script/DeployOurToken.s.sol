// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {OurToken} from "../src/OurToken.sol";
import {console} from "forge-std/Test.sol";

contract DeployOurToken is Script {
    uint256 public constant INITIAL_SUPPLY = 1000 ether;

    function run() external returns (OurToken) {
        console.log("msg.sender in script:", msg.sender);

        vm.startBroadcast();
        console.log("Script contract addr by this", address(this));
        console.log("msg.sender in script:", msg.sender);
        OurToken ourToken = new OurToken(INITIAL_SUPPLY);
        vm.stopBroadcast();

        return ourToken;
    }
}
