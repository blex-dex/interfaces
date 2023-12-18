// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8;

interface IPrice {
    function fastPriceFeed() external view returns (address);

    function chainPriceFeed() external view returns (address);
}
