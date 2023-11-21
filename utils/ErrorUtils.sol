// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

library ErrorPlus {
    // Error for an invalid market
    string internal constant InvaildMarket = "invalid market";
    // Error for  is due to not not belonging to the market role or not
    //having controller permissions to call the method in the FeeRouter contract
    string internal constant FeeRouterAccessDenied = "feeRouter: access denied";
    // Error for an invaild Addr
    string internal constant InvaildAddr = "invalid address";
    // Error for an invalid fundFee address
    string internal constant InvalidFundFeeAddr = "invalid fundFee";
    // Error for an invalid fee vault address
    string internal constant InvalidFeeVaultAddr = "invalid fee vault";
    // Error for invalid parameters
    string internal constant InvaildParams = "invalid params";
    // Error for Multiple array lengths do not match
    string internal constant MismatchParamsLength = "mismatch length";
    // Error for is setting the parameters of setMinFRate, the limit vaule is 0
    string internal constant InvaildLimit = "invalid limit";
    // Error for global parameters being invalid
    string internal constant InvaildGlobalParams = "GlobalValid:!params";
    // Error for invalid  global market validation
    string internal constant InvaildGlobalVaildMarket = "GlobalValid:!market";
    // Error for invalid  global size limit
    string internal constant InvaildGlobalVaildSizeLimit =
        "GlobalValid:!size limit";
    // Error for attempting to add the same market address
    string internal constant AddSameMarketAddr = "Market:same address";
    // Error for attempting to modify the positionBook and causing positionStore invaild
    string internal constant InvaildPostionStore = "invalid store";
    // Error for an invalid controller permission call
    string internal constant InvaildController = "invalid controller";

    // Error for minimum slippage being too large
    string internal constant MinSlippageTooBig = "sp too big";
    // Error for maximum slippage being too large
    string internal constant MaxSlippageTooBig = "ms too big";
    // Error for leverage being too large
    string internal constant LevTooBig = "ml too big";
    // Error for minimum payment being too large
    string internal constant MinPayTooBig = "mp too big";
    // Error for minimum collateral being too large
    string internal constant MinCollateralTooBig = "mc too big";
    // Error for dec order limit being too large
    string internal constant OrderLimitTooBig = "mc too big";
    // Error for maximum trade amount being too large
    string internal constant MaxTradeAmountTooBig = "mta too big";
    // Error for get a non-existent market
    string internal constant MarketNoTFound = "market not found";
    // Error for invalid vault withdrawal without a user account
    string internal constant InvaildVaultWithdraw =
        "vaultWithdraw:!userAccount";
    // Error for the market token balance has changed
    // when call afterUpdatePosition/afterUpdateOrder/afterDeleteOrder function
    string internal constant FundsStatusChanged = "ERC20 token balance changed";

    // Error for Used in the MarketRouter and indicates that a market does not exist
    string internal constant MarketNotExist = "MarketRouter:!market";
    // Error for Multiple array lengths do not match
    string internal constant ArraryParamsMismatch =
        "Array lengths do not match";
    // Error for Duplicate orders were found to be executed in marketRouter contract
    string internal constant DuplicateOrder = "Duplicate order found";
    // Error for the sender is invalid
    string internal constant InvaildCaller = "invalid sender";
    // Error for an invalid oracle price in MarketValid, Probably because the value is 0
    string internal constant InvaildOraclePrice = "invalid oracle price";
    // Error for the market is closed in MarketValid
    string internal constant MarketClosed = "MarketValid:MarketClosed";
    // Error for  insufficient collateral in MarketValid
    string internal constant CollateralInsufficient = "MarketValid:Collateral";
    // Error for  invalid leverage in MarketValid
    string internal constant InvaildLev = "MarketValid:Lev";
    //  Marks an error in MarketValid related to an invalid take profit
    string internal constant InvaildTakeProfit = "MarketValid:Tp";
    // Indicates an error in MarketValid due to an invalid stop loss
    string internal constant InvaildStopLoss = "MarketValid:Sl";
    // Marks an error in MarketValid related to an invalid size,
    // Probably because the decrease size is larger than the holding size
    string internal constant InvaildSize = "MarketValid:Size";
    // Error for the payment amount is greater than the maximum trade amount in MarketValid
    string internal constant InvaildPay = "MarketValid:pay>MaxTradeAmount";
    // Error for desc order limit is greater than config limit  in MarketValid
    string internal constant DescOrderLimit = "Max orders:config limit";
    // Error for input price being zero in MarketValid
    string internal constant PriceNotZero = "MarketValid:input price zero";
    // Error for non-zero market price without Oracle data in MarketValid
    string internal constant MarketPriceNotZero = "MarketValid:!oracle";
    // Error for invalid front-end price in MarketValid
    string internal constant FrontEndPriceInvaild =
        "MarketValid:!front-end price";
    // Error for losses exceeding collateral in MarketValid
    string internal constant LossesCollateralInvaild =
        "MarketValid:losses exceed collateral";
    // Error for fees exceeding collateral in MarketValid
    string internal constant FeesExeceedCollateral =
        "MarketValid: fees exceed collateral";
    // Error for liquidation fees exceeding collateral in MarketValid
    string internal constant LiquidationFeesExceedCollateral =
        "MarketValid: liquidation fees exceed collateral";
    // Error for exceeding maximum leverage in MarketValid
    string internal constant LevExceedMaxLev =
        "MarketValid: maxLeverage exceeded";
    // Error for Multiple array lengths do not match in OrderMgr
    string internal constant ParamsLengthInvaild = "OrderMgr:input length";
    //  Error for invalid parameters in PositionAddMgr
    string internal constant PositionAddMgrParamsInvaild =
        "PositionAddMgr:invalid params";
    //  Error for invalid isOpen parameter in PositionAddMgr
    //  Probably because isOpen is false
    string internal constant PositionAddMgrIsOpenInvaild =
        "PositionAddMgr:invalid isopen";
    // Error for missing account in PositionAddMgr
    string internal constant PositionAddMgrAccountInvaild =
        "PositionAddMgr:!account";
    //  Error for arket order exceeds slippage cancel in PositionAddMgr
    string internal constant PositionAddMgrMarketSlippage =
        "PositionAddMgr:market slippage";
    //  Error for insufficient collateral in PositionAddMgr
    string internal constant PositionAddMgrCollateralInsufficient =
        "PositionAddMgr: insufficient collateral";
    //  Error for reach liquidation in PositionAddMgr
    string internal constant PositionAddMgrNotLiq =
        "PositionAddMgr:should'nt liq";
    //  Error for isOpen parameter is true in PositionSubMgr
    string internal constant PositionSubMgrIsOpen = "PositionSubMgr:isOpen";
    //  Error for wrong isexec/fromorder parameters in PositionSubMgr
    string internal constant PositionSubMgrOrderParams =
        "PositionSubMgr:wrong isexec/fromorder";
    //  Error for reach liquidation  in PositionSubMgr
    string internal constant PositionSubMgrNotLiq =
        "PositionAddMgr:should'nt liq";
    // Error for missing account in PositionSubMgr
    string internal constant PositionSubMgrAccountInvaild =
        "PositionSubMgr:!account";
    //  Error for market order exceeds slippage cancel in PositionSubMgr
    string internal constant PositionSubMgrMarketSlippage =
        "PositionSubMgr:market slippage";
    // Error for invalid isOpen parameter in PositionSubMgr
    string internal constant PositionSubMgrIsOpenInvaild =
        "PositionSubMgr:invalid isOpen";
    //  Error for position being under liquidation in PositionSubMgr
    string internal constant PositionSubMgrLiq =
        "PositionSubMgr:position under liq";

    // Error for invalid _priceSampleSpace in PriceFeed
    string internal constant PriceSampleSpaceInvaild =
        "PriceFeed: invalid _priceSampleSpace";
    // Error for invalid price feed in PriceFeed
    string internal constant PricefeedInvaild = "PriceFeed: invalid price feed";
    //  Error for invalid price in PriceFeed
    string internal constant PriceFeedPriceInvaild = "PriceFeed: invalid price";
    //  Error for failure to fetch price in PriceFeed
    string internal constant PriceFeedFetchpriceInvaild =
        "PriceFeed: could not fetch price";
    //  Error for invalid _priceDuration in FastPriceFeed
    string internal constant PriceDurationInvaild =
        "FastPriceFeed: invalid _priceDuration";
    // Error for Multiple parameters lengths  invalid  in FastPriceFeed
    string internal constant FastPriceFeedParamsInvaild =
        "FastPriceFeed: invalid lengths";
    //  Error for invalid refPrice in FastPriceFeed
    string internal constant FastPriceFeedRefPriceInvaild =
        "FastPriceFeed: invalid refPrice";
    //  Error for invalid cumulativeRefDelta in FastPriceFeed
    string internal constant FastPriceFeedCumulativeRefDeltaInvaild =
        "FastPriceFeed: invalid cumulativeRefDelta";
    // Error message for when the minimum block interval has not yet passed in FastPriceFeed
    string internal constant FastPriceFeedMinBlockIntervalInvaild =
        "FastPriceFeed: minBlockInterval not yet passed";
    // Error message for when the provided timestamp is below the allowed range in FastPriceFeed
    string internal constant FastPriceFeedTimeStampBelowAllowRange =
        "FastPriceFeed: _timestamp below allowed range";
    // Error message for when the provided timestamp exceeds the allowed range in FastPriceFeed
    string internal constant FastPriceFeedTimeStampExceedsAllowRange =
        "FastPriceFeed: _timestamp exceeds allowed range";
    // Error message for when the adjustment frequency exceeds the limit in the PriceFeed
    string internal constant PriceFeedAdjustmentFrequencyExceeded =
        "PriceFeed: adjustment frequency exceeded";
    // Error message for when an invalid adjustment basis points value is encountered in PriceFeed
    string internal constant PriceFeedAdjustmentBps = "invalid _adjustmentBps";
    //  Error message for an invalid feed address in the PriceFeed
    string internal constant FeedPriceAddrInvaild = "invalid feed";
    //  Error message for an invalid spread basis points value in the PriceFeed
    string internal constant SpreadBasisPointsInvaild =
        "PriceFeed: invalid _spreadBasisPoints";
    //  Error message for when the oracle price is zero in the OrderBook
    string internal constant OrderBookOraclePriceZero = "oraclePrice zero";
    // Error message for an invalid order key in the OrderBook
    string internal constant OrderBookKeyInvaild = "OrderBook:invalid orderKey";
    // Error message for when the version is wrong in the OrderBook
    string internal constant OrderVersionInvaild = "OrderBook:wrong version";
    // Error message for invalid collateral in the OrderBook
    string internal constant OrderCoateralInvaild = "OB:invalid collateral";
    // Error message for an invalid account in the OrderBook
    string internal constant OrderAccountInvaild = "OrderBook:invalid account";
    // Error message for when the triggerabove is zero in the OrderBook
    string internal constant OrderTriggerAboveInitInvaild =
        "OB:trigger above init";
    // Error message for an invalid order triggerabove in the OrderBook
    string internal constant OrderTriggerAboveInvaild =
        "invalid order trigger above";
    // Error message for when the take profit price is less than the order price in the OrderBook
    string internal constant OrderTakeProfitInvaild = "OrderBook:tp<price";
    // Error message for when the stop loss price is greater than the order price in the OrderBook
    string internal constant OrderStopLossInvaild = "OrderBook:sl>price";
    // Error message for an invalid order key
    string internal constant OrderKeyInvaild = "invalid order key";
    //  Error message for an invalid market address in the PositionBook
    string internal constant PositionMarketInvaild = "invalid market address";
    //  Error message for invalid range parameters in the PositionBook
    string internal constant PositionRangeParamsInvaild =
        "positionBook: invalid range params";
    // Error message for an invalid position in the PositionBook
    string internal constant PositionVaild = "positionBook: invalid position";
    // Error message for when the specified position does not exist in the PositionBook
    string internal constant PositionBookNotExist =
        "positionBook: position does not exist";
    // Error message for invalid collateral in the PositionBook
    string internal constant PositionCollateralInvaild =
        "positionBook: invalid collateral";
    // Error message for an invalid position size in the PositionBook
    string internal constant PositionSizeInvaild = "positionBook: invalid size";
    // Error message for an invalid average price in the PositionBook
    string internal constant PositionAveragePrice =
        "pb:invalid global position";
    // Error message for when the specified position does not exist in the PositionBook
    string internal constant PositionNotExist =
        "positionBook: position does not exist";
    // Error message for invalid total rebate in the Referral contract
    string internal constant ReferralTotalRebateInvaild =
        "Referral: invalid totalRebate";
    // Error message for invalid discount share in the Referral contract
    string internal constant ReferralDiscountShareInvaild =
        "Referral: invalid discountShare";
    // Error message for an invalid referral code in the Referral contract
    string internal constant ReferralCodeInvaild = "Referral: invalid _code";
    // Error message for attempting to use an already existing referral code in the Referral contract
    string internal constant ReferralCodeAlready =
        "Referral: code already exists";
    //  Error message for an invalid referral code owner in the Referral contract
    string internal constant ReferralCodeOwnerInvaild = "Referral: forbidden";
    // Error message for a frozen CoreVault.
    string internal constant CoreVaultFreezed = "vault:freeze";

    // Error message for a CoreVault in cooldown.
    string internal constant CoreVaultCooldown = "vault:cooldown";

    // Error message for when transferring BLP is not allowed.
    string internal constant BLPTransferNotAllowed = "transfer not allowed";

    // Error message for an invalid caller in the RewardDistributor contract.
    string internal constant RewardDistributorCallerInvaild =
        "RewardDistributor: invalid msg.sender";

    // Error message for an error related to minimum shares in the VaultReward contract.
    string internal constant VaultRewardMinSharesError = "MinSharesError";

    // Error message for an error related to minimum output in the VaultReward contract.
    string internal constant VaultRewardMinOutError = "MinOutError";

    // Error message for an invalid market in the VaultRouter contract.
    string internal constant VaultRouterMarketInvaild = "VaultRouter: !market";

    // Error message for a frozen VaultRouter.
    string internal constant VaultRouterFreezed = "VaultRouter: freeze";

    // Error message for triggerabove in the PositionAddMgr contract.
    string internal constant PositionAddMgrTriggerabove =
        "PositionAddMgr: triggerabove";

    function equals(
        string memory _str,
        string memory str
    ) internal pure returns (bool) {
        return
            keccak256(abi.encodePacked(_str)) ==
            keccak256(abi.encodePacked(str));
    }

    function isEmpty(string memory _str) internal pure returns (bool) {
        return (bytes(_str).length == 0);
    }
}
