// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DecentralizedIdentity {
    mapping(address => string) public identities;

    event IdentityUpdated(address indexed user, string identity);

    function setIdentity(string memory newIdentity) public {
        require(bytes(newIdentity).length > 0, "Identity cannot be empty");
        identities[msg.sender] = newIdentity;
        emit IdentityUpdated(msg.sender, newIdentity);
    }

    function getIdentity(address user) public view returns (string memory){
        return identities[user];
    }
}