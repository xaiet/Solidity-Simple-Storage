// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract Storehouse{
    SimpleStorage[] storageArray;
    function createStoreItem() public returns(uint256){
        SimpleStorage sS = new SimpleStorage();
        storageArray.push(sS);
        return storageArray.length -1;
    }
    function getValue(uint256 index) public view returns(uint256){
        return storageArray[index].pullItem();
    }
    function setValue(uint256 index, uint256 itemToStore) public {
        storageArray[index].pushItem(itemToStore);
    }

}