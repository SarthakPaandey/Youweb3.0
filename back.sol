// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.2;

contract SingleVideoContract {
    string public videoLink;
    address public owner;

    event VideoAdded(address indexed owner, string videoLink);

    constructor() {
        owner = msg.sender;
    }

    function addVideo(string memory _videoLink) public {
        require(msg.sender == owner, "Only the owner can add a video link");
        videoLink = _videoLink;
        emit VideoAdded(owner, _videoLink);
    }

    function getVideoLink() public view returns (string memory) {
        return videoLink;
    }
}
