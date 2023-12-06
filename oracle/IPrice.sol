// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8;

interface IPrice {
    function fastPriceFeed() external returns (address);
}
