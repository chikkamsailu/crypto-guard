// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract IdeaVault {
    mapping(address => string) public content;
    mapping(address => string) public idea;
    mapping(address => string) public data;

    function storeContent(string memory _content) public {
        content[msg.sender] = _content;
    }

    function storeIdea(string memory _idea) public {
        idea[msg.sender] = _idea;
    }

    function storeData(string memory _data) public {
        data[msg.sender] = _data;
    }

    function getContent() public view returns (string memory) {
        return content[msg.sender];
    }

    function getIdea() public view returns (string memory) {
        return idea[msg.sender];
    }

    function getData() public view returns (string memory) {
        return data[msg.sender];
}
}