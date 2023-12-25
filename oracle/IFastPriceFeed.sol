// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;
import {DataStreamLib} from "../market/DataStreamLib.sol";

interface IFastPriceFeed {
    function setPricesAndExecute(
        address token,
        uint256 price,
        uint256 timestamp,
        DataStreamLib.OrderExec[] memory orders
    ) external;

    function setPrices(
        address[] memory _tokens,
        uint256[] memory _prices,
        uint256 _timestamp
    ) external;
}
