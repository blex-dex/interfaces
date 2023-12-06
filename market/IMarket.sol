// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8;

interface IMarket {
    function updateCumulativeFundingRate() external;

    function indexToken() external returns (address);

    function priceFeed() external returns (address);
}
