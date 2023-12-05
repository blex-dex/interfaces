// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.17;

library DataStreamLib {
    // event UpdateOrder(
    //     address indexed account, //0
    //     bool isLong, //1
    //     bool isIncrease, //2 if false, trade type == "trigger", otherwise, type =="limit"
    //     uint256 orderID, //3
    //     address market, //4 -> market name
    //     // -------------------
    //     // address collateralToken, //TODO: fix me multi collateral token
    //     uint256 size, //5
    //     uint collateral, //6
    //     uint256 triggerPrice, //7
    //     bool triggerAbove, // 8TODO, set to bool
    //     uint tp, //9
    //     uint sl, //10
    //     uint128 fromOrder, //11, triggertp&sl, order
    //     bool isKeepLev, //12, trigger, , order, orders
    //     MarketDataTypes.UpdateOrderInputs params
    // );

    struct OrderExec {
        address market;
        address account;
        uint64 orderID;
        bool isIncrease;
        bool isLong;
    }
}
