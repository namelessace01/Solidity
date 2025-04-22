// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Counter {
    
    uint count; // uint = Unassigned Integers
    string name; // Sets of characters in a quotations

    constructor(string memory _name, uint _initialCount) {
        name = _name;
        count = _initialCount;
    }

    event Increment(uint value); // event tracking for count Increment
    event Decrement(uint value); // event tracking for count Decrement

    function increment() public {
        // function to increment the count value by 2
        count += 2;
        emit Increment(count);
    }

    function decrement() public {
        // function to decrement the count value by 1
        count --;
        emit Decrement(count);
    }

    function getCount() public view returns(uint) {
        // function to get the current count value
        return count;
    }

    function getName() public view returns(string memory currentName) {
        // function to get the current name registered on the blockchain 
        return name;
    }

    function setName(string memory _newName) public returns (string memory newName) {
        // function to let the user set name from the blockchain...sorta
        name = _newName;
        return name;
    }
}