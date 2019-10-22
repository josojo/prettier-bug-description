pragma solidity ^0.5.0;
import "openzeppelin-solidity/contracts/math/SafeMath.sol";

contract Example {
    using SafeMath for uint256;

    struct BalanceState {
        uint256 balance;
    }

    mapping(address => mapping(address => BalanceState)) private balanceStates;
    function example(address token, uint256 amount) public {
        balanceStates[msg.sender][token].balance = balanceStates[msg
            .sender][token]
            .balance
            .sub(amount);
    }
}
