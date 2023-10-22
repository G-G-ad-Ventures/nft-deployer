// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/NFT.sol";
import "forge-std/console.sol";


contract MyScript is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        NFT nft = new NFT("NFT_tutorial", "TUT", "https://gulli.btc.us", 0xECdCCe0113B3A9f46ad010af75186bF540A5eeB4);

        uint id = nft.mintTo{value: 0.001 ether}(0xECdCCe0113B3A9f46ad010af75186bF540A5eeB4);
        console.log("what is id", id);
        id = nft.mintTo{value: 0.001 ether}(0xECdCCe0113B3A9f46ad010af75186bF540A5eeB4);
        console.log("what is id", id);

        id = nft.mintTo{value: 0.001 ether}(0xECdCCe0113B3A9f46ad010af75186bF540A5eeB4);
        console.log("what is id", id);

        id = nft.mintTo{value: 0.001 ether}(0xECdCCe0113B3A9f46ad010af75186bF540A5eeB4);
        console.log("what is id", id);

        id = nft.mintTo{value: 0.001 ether}(0xECdCCe0113B3A9f46ad010af75186bF540A5eeB4);
        console.log("what is id", id);

        vm.stopBroadcast();
    }


}
