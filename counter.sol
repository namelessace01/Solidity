// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Counter {
    
    uint count = 0;

    event Increment(uint value);
    event Decrement(uint value);

    function increment() public {
        count += 2;
        emit Increment(count);
    }

    function decrement() public {
        count -= 1;
        emit Decrement(count);
    }

    function getCount() public view returns(uint) {
        return count;
    }
}