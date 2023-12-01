// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.17;

library DataStreamLib {
    struct OrderExec {
        address market;
        address account;
        uint64 orderID;
        bool isIncrease;
        bool isLong;
    }
}
