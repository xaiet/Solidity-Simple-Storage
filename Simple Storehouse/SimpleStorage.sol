// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage{
    uint256 numberToStore;

    function pushItem(uint256 _numberToStore) public {
        numberToStore = _numberToStore;
    }
    function pullItem() public view returns(uint256){
        return numberToStore;
    }
}