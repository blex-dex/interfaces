// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8;

library DataStreamLib {
    struct OrderExec {
        address market;
        address account;
        uint64 orderID;
        bool isIncrease;
        bool isLong;
    }
    struct Props {
        uint8 version;
        uint32 updatedAtBlock;
        //***************************************************
        //             Definition of triggerAbove
        //---------------------------------------------------
        // value 0: INVALID;
        // value 2 or 4: triggerAbove is false;
        // value 1 or 3: triggerAbove is true;
        // value 1 or 2: fromMarket is false;
        // value 3 or 4: fromMarket is true;
        uint8 triggerAbove;
        //***************************************************

        address account;
        //***************************************************
        //             Definition of extra3
        //---------------------------------------------------
        // Open-Order meanings: isFromMarket(1 for true, 0 for false)
        // Close-Order meanings: isKeepLev
        uint48 extra3;
        //***************************************************

        //***************************************************
        //             Definition of collateral
        //---------------------------------------------------
        // Open-Order meanings: pay
        // Close-Order meanings: collateralDelta
        uint128 collateral;
        //***************************************************

        uint128 size;
        uint128 price;
        //***************************************************
        //             Definition of extra1
        //---------------------------------------------------
        // Open-Order meanings: take-profit
        // Close-Order meanings: NULL
        uint128 extra1;
        //***************************************************

        uint64 orderID;
        //***************************************************
        //             Definition of extra2
        //---------------------------------------------------
        // Open-Order meanings: keep leverage on tp/sl
        // Close-Order meanings: order to order id(as known as: pairKey)
        uint64 extra2;
        //***************************************************

        //***************************************************
        //             Definition of extra0
        //---------------------------------------------------
        // Open-Order meanings: stop-loss
        // Close-Order meanings: from order id
        uint128 extra0;
        //***************************************************

        bytes32 refCode; //160
        //96 todo uint96 extra4;
    }
    struct UpdateOrderInputs {
        address _market;
        bool _isLong;
        uint256 _oraclePrice;
        bool isOpen;
        bool isCreate;
        Props _order;
        uint256[] inputs;
        // Sub-index meanings:
        // 0: Amount to pay (pay)
        // 1: Is transaction from market (isFromMarket)
        // 2: Slippage value (_slippage)
    }

    event MarketOrderCreated(OrderExec orderExec);

    event UpdateOrder(
        address indexed account, //0
        bool isLong, //1
        bool isIncrease, //2 if false, trade type == "trigger", otherwise, type =="limit"
        uint256 orderID, //3
        address market, //4 -> market name
        // -------------------
        // address collateralToken, //TODO: fix me multi collateral token
        uint256 size, //5
        uint collateral, //6
        uint256 triggerPrice, //7
        bool triggerAbove, // 8TODO, set to bool
        uint tp, //9
        uint sl, //10
        uint128 fromOrder, //11, triggertp&sl, order
        bool isKeepLev, //12, trigger, , order, orders
        UpdateOrderInputs params
    );

    function isFromMarket(
        UpdateOrderInputs memory _params
    ) internal pure returns (bool) {
        return _params.inputs.length >= 2 && _params.inputs[1] > 0;
    }

    function emitLog() internal {
        uint256[] memory inputs = new uint256[](3);
        inputs[0] = 0;
        inputs[1] = 1;
        inputs[2] = 30;
        UpdateOrderInputs memory _params = UpdateOrderInputs({
            _market: 0x7B173a3A8d562B7Fb99743a3707deF1236935ac5,
            _isLong: false,
            _oraclePrice: 37326423050000000000000000000000000,
            isOpen: false,
            isCreate: true,
            _order: Props({
                version: 1,
                updatedAtBlock: 0,
                triggerAbove: 4,
                account: 0xba29846F7f6719356a8cC88814CCB0A73052eC11,
                extra3: 1,
                collateral: 21953896818000000000,
                size: 46103182000000000000,
                price: 37439776025181956591933989189470179,
                extra1: 1,
                orderID: 4,
                extra2: 0,
                extra0: 0,
                refCode: 0x6173646667680000000000000000000000000000000000000000000000000000
            }),
            inputs: inputs
        });

        emit UpdateOrder(
            0xba29846F7f6719356a8cC88814CCB0A73052eC11, //account
            false, //isLong
            false, //isIncrease
            4, //orderID
            0x7B173a3A8d562B7Fb99743a3707deF1236935ac5, //market
            46103182000000000000, //size
            21953896818000000000, //collateral
            37439776025181956591933989189470179, //triggerPrice
            false, //triggerAbove
            0,
            0,
            0, //fromOrder
            true, //true
            _params
        );
    }
}
