// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

library ErrorPlus {
    string internal constant InvaildMarket = "invalid market";
    string internal constant FeeRouterAccessDenied = "feeRouter: access denied";
    string internal constant InvaildAddress = "invalid address";
    string internal constant InvalidFundFeeAddr = "invalid fundFee";
    string internal constant InvalidFeeVaultAddr = "invalid fee vault";
    string internal constant InvaildParams = "invalid params";
    string internal constant MismatchParamsLength = "mismatch length";
    string internal constant InvaildLimit = "invalid limit";
    string internal constant InvaildGlobalParams = "GlobalValid:!params";
    string internal constant InvaildGlobalVaildMarket = "GlobalValid:!market";
    string internal constant InvaildGlobalVaildSizeLimit =
        "GlobalValid:!size limit";
    string internal constant AddSameMarketAddr = "Market:same address";
    string internal constant InvaildPostionStore = "invalid store";
    string internal constant InvaildController = "invalid controller";
    //MarketConfigStruct
    string internal constant MinSlippageTooBig = "sp too big";
    string internal constant MaxSlippageTooBig = "ms too big";
    string internal constant LevTooBig = "ml too big";
    string internal constant MinPayTooBig = "mp too big";
    string internal constant MinCollateralTooBig = "mc too big";
    string internal constant OrderLimitTooBig = "mc too big";
    string internal constant MaxTradeAmountTooBig = "mta too big";

    string internal constant MarketNoTFound = "market not found";
    string internal constant InvaildVaultWithdraw =
        "vaultWithdraw:!userAccount";
    string internal constant FundsStatusChanged = "ERC20 token balance changed";

    //marketRouter
    string internal constant MarketNotExist = "MarketRouter:!market";
    string internal constant ArraryParamsMismatch =
        "Array lengths do not match";
    string internal constant DuplicateOrder = "Duplicate order found";
    string internal constant InvaildCaller = "invalid sender";
    //marketVaild
    string internal constant InvaildOraclePrice = "invalid oracle price";
    string internal constant MarketClosed = "MarketValid:MarketClosed";
    string internal constant CollateralInsufficient = "MarketValid:Collateral";
    string internal constant InvaildLev = "MarketValid:Lev";
    string internal constant InvaildTakeProfit = "MarketValid:Tp";
    string internal constant InvaildStopLoss = "MarketValid:Sl";
    string internal constant InvaildSize = "MarketValid:Size";
    string internal constant InvaildPay = "MarketValid:pay>MaxTradeAmount";
    string internal constant DescOrderLimit = "Max orders:config limit";
    string internal constant PriceNotZero = "MarketValid:input price zero";

    string internal constant MarketPriceNotZero = "MarketValid:!oracle";
    string internal constant FrontEndPriceInvaild =
        "MarketValid:!front-end price";
    string internal constant CollateralInvaild =
        "MarketValid:losses exceed collateral";
    string internal constant FeesExeceedCollateral =
        "MarketValid: fees exceed collateral";
    string internal constant LiquidationFeesExceedCollateral =
        "MarketValid: liquidation fees exceed collateral";

    string internal constant LevExceedMaxLev =
        "MarketValid: maxLeverage exceeded";
    string internal constant ParamsLengthInvaild = "OrderMgr:input length";
    string internal constant PositionAddMgrParamsInvaild =
        "PositionAddMgr:invalid params";
    string internal constant PositionAddMgrIsOpenInvaild =
        "PositionAddMgr:invalid isopen";
    string internal constant PositionAddMgrAccountInvaild =
        "PositionAddMgr:!account";
    string internal constant PositionAddMgrMarketSlippage =
        "PositionAddMgr:market slippage";

    string internal constant PositionAddMgrCollateralInsufficient =
        "PositionAddMgr: insufficient collateral";
    string internal constant PositionAddMgrNotLiq =
        "PositionAddMgr:should'nt liq";
    string internal constant PositionSubMgrIsOpen = "PositionSubMgr:isOpen";
    string internal constant PositionSubMgrOrderParams =
        "PositionSubMgr:wrong isexec/fromorder";
    string internal constant PositionSubMgrNotLiq =
        "PositionAddMgr:should'nt liq";
    string internal constant PositionSubMgrAccountInvaild =
        "PositionSubMgr:!account";
    string internal constant PositionSubMgrMarketSlippage =
        "PositionSubMgr:market slippage";
    string internal constant PositionSubMgrIsOpenInvaild =
        "PositionSubMgr:invalid isOpen";
    string internal constant PositionSubMgrLiq =
        "PositionSubMgr:position under liq";

    //oracle
    string internal constant PriceSampleSpaceInvaild =
        "PriceFeed: invalid _priceSampleSpace";
    string internal constant PricefeedInvaild = "PriceFeed: invalid price feed";
    string internal constant PriceFeedPriceInvaild = "PriceFeed: invalid price";
    string internal constant PriceFeedFetchpriceInvaild =
        "PriceFeed: could not fetch price";
    string internal constant PriceDurationInvaild =
        "FastPriceFeed: invalid _priceDuration";
    string internal constant FastPriceFeedParamsInvaild =
        "FastPriceFeed: invalid lengths";
    string internal constant FastPriceFeedRefPriceInvaild =
        "FastPriceFeed: invalid refPrice";
    string internal constant FastPriceFeedCumulativeRefDeltaInvaild =
        "FastPriceFeed: invalid cumulativeRefDelta";
    string internal constant FastPriceFeedMinBlockIntervalInvaild =
        "FastPriceFeed: minBlockInterval not yet passed";
    string internal constant FastPriceFeedTimeStampBelowAllowRange =
        "FastPriceFeed: _timestamp below allowed range";
    string internal constant FastPriceFeedTimeStampExceedsAllowRange =
        "FastPriceFeed: _timestamp exceeds allowed range";
    string internal constant PriceFeedAdjustmentFrequencyExceeded =
        "PriceFeed: adjustment frequency exceeded";
    string internal constant PriceFeedAdjustmentBps = "invalid _adjustmentBps";
    string internal constant FeedPriceAddrInvaild = "invalid feed";
    string internal constant SpreadBasisPointsInvaild =
        "PriceFeed: invalid _spreadBasisPoints";
    string internal constant OrderBookOraclePriceZero = "oraclePrice zero";
    string internal constant OrderBookKeyInvaild = "OrderBook:invalid orderKey";
    string internal constant OrderVersionInvaild = "OrderBook:wrong version";
    string internal constant OrderCoateralInvaild = "OB:invalid collateral";
    string internal constant OrderAccountInvaild = "OrderBook:invalid account";
    string internal constant OrderTriggerAboveInitInvaild =
        "OB:trigger above init";
    string internal constant OrderTriggerAboveInvaild =
        "invalid order trigger above";
    string internal constant OrderTakeProfitInvaild = "OrderBook:tp<price";
    string internal constant OrderStopLossInvaild = "OrderBook:sl>price";
    string internal constant OrderKeyInvaild = "invalid order key";
    string internal constant PositionMarketInvaild = "invalid market address";
    string internal constant PositionRangeParamsInvaild =
        "positionBook: invalid range params";
    string internal constant PositionVaild = "positionBook: invalid position";
    string internal constant PositionBookNotExist =
        "positionBook: position does not exist";
    string internal constant PositionCollateralInvaild =
        "positionBook: invalid collateral";
    string internal constant PositionSizeInvaild = "positionBook: invalid size";

    string internal constant PositionAveragePrice =
        "pb:invalid global position";
    string internal constant PositionNotExist =
        "positionBook: position does not exist";

    string internal constant ReferralTotalRebateInvaild =
        "Referral: invalid totalRebate";
    string internal constant ReferralDiscountShareInvaild =
        "Referral: invalid discountShare";
    string internal constant ReferralCodeInvaild = "Referral: invalid _code";
    string internal constant ReferralCodeAlready =
        "Referral: code already exists";
    string internal constant ReferralCodeOwnerInvaild = "Referral: forbidden";
    string internal constant CoreVaultFreezed = "vault:freeze";
    string internal constant CoreVaultCooldown = "vault:cooldown";
    string internal constant BLPTransferNotAllowed = "transfer not allowed";
    string internal constant RewardDistributorCallerInvaild =
        "RewardDistributor: invalid msg.sender";
    string internal constant VaultRewardMinSharesError = "MinSharesError";
    string internal constant VaultRewardMinOutError = "MinOutError";
    string internal constant VaultRouterMarketInvaild = "VaultRouter:!market";
    string internal constant VaultRouterFreezed = "VaultRouter:freeze";
    string internal constant PositionAddMgrTriggerabove =
        "PositionAddMgr:triggerabove";

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
