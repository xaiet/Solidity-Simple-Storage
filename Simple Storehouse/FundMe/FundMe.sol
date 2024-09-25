//Get funds from users
//Withdraw funds
//Set a minimum funding value in USD

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FundMe{
    function fund() public payable { 
        require(msg.value > 1e18, "Not enough funds for gas"); //aqui setejes que la minima quantitat de transaccio sigui 1 ETH == 1 * 10e18 == 1*10*1000000000000000000 WEIS
    }
    //function withdraw(){}
}