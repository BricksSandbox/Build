// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

import "../../../../contracts/interfaces/examplePlatforms/uniswap/contracts/IUniswapExchange.sol";
import "../../../../contracts/interfaces/examplePlatforms/uniswap/contracts/IUniswapFactory.sol";

import "../../../../contracts/interfaces/basic/ERC20.sol";


contract UniswapFactory {

      function addLiquidity(uint256 min_liquidity, uint256 max_tokens, uint256 deadline) external payable returns (uint256){
        //arbitratey amount to return
        return msg.value/5;
      }

      function getExchange(address token) external view returns (address exchange){
        //example response
        return address(0x0);
      }





}
