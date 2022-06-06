pragma solidity ^0.8.7;
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract PriceConsumerV3 {
    AggregatorV3Interface internal priceFeed;

    constructor() public {
        priceFeed = AggregatorV3Interface(0xd8bD0a1cB028a31AA859A21A3758685a95dE4623);
    }   

    function getLatestPrice() public view returns (int) {
        (
            uint80 roundID,
            int price,
            uint startedAt,
            uint timestamp,
            uint80 answeredInRound            
        ) = priceFeed.latestRoundData();
        return price;
    }

    function getTimestamp() public view returns (uint) {
        (
            uint80 roundID,
            int price,
            uint startedAt,
            uint timestamp,
            uint80 answeredInRound            
        ) = priceFeed.latestRoundData();
        return timestamp;
    }

}