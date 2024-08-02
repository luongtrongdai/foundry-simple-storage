// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

import {Script, console} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract SimpleStorageScript is Script {
    SimpleStorage public simpleStorage;

    function setUp() public {}

    function run() public returns (SimpleStorage) {
        vm.startBroadcast();

        simpleStorage = new SimpleStorage();

        vm.stopBroadcast();
        
        return simpleStorage;
    }
}
