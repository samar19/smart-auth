// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

contract MockInvalidAuthModule {
    mapping(address => bytes) internal setupData;

    function init(bytes calldata setupData_) external returns (address) {
        setupData[msg.sender] = setupData_;
        return address(this);
    }

    // Doesn't have validateUserOp function
    // Doesn't have isValidSignature function
}
