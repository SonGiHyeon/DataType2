// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataType2 {
    string private message = "Hello, Solidity!";
    uint[] private numbers;
    string[] private names;
    struct User {
        string name;
        uint256 age;
    }
    mapping(address => uint) private balances;
    mapping(address => User) private users;
    bytes private dynamicData;
    bytes32 private fixedData =
        0xabcdef1234560000000000000000000000000000000000000000000000000000;

    function getMessage() public view returns (string memory) {
        return message;
    }
    function setMessage(string memory _message) public {
        message = _message;
    }

    function getNumbers() public view returns (uint[] memory) {
        return numbers;
    }

    function addNumber(uint num) public {
        numbers.push(num);
    }
    function getNumber(uint index) public view returns (uint) {
        return numbers[index];
    }

    function getNames() public view returns (string[] memory) {
        return names;
    }
    function addName(string memory _names) public {
        names.push(_names);
    }

    function setBalance(address _addr, uint256 _balance) public {
        balances[_addr] = _balance;
    }
    function getBalance(address _addr) public view returns (uint) {
        return balances[_addr];
    }
    function setUser(address _addr, string memory _name, uint _age) public {
        users[_addr] = User(_name, _age);
    }
    function getUser(address _addr) public view returns (string memory, uint) {
        User memory user = users[_addr];
        return (user.name, user.age);
    }

    function setDynamicData(bytes memory _Data) public {
        dynamicData = _Data;
    }
    function getDynamicData() public view returns (bytes memory) {
        return dynamicData;
    }

    function setFixedData(bytes32 _fixedData) public {
        fixedData = _fixedData;
    }
    function getFixedData() public view returns (bytes32) {
        return fixedData;
    }

    function getDetails()
        public
        view
        returns (
            string memory,
            uint[] memory,
            string[] memory,
            bytes32,
            bytes memory
        )
    {
        return (message, numbers, names, fixedData, dynamicData);
    }
}
