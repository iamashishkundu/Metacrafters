// SPDX-License-Identifier: MIT

/*
Contract successfully uses require()
Contract successfully uses assert()
Contract successfully uses revert() statements
*/
pragma solidity ^0.8.20;

contract functionanderror {
    uint public age;
    bool public isMale;
    bool public isFeesPaid;

    function HostelAdmission(uint256 _age, bool _isMale, bool _isFeesPaid) public {
        require(_age > 18, "Age must be greater than 18");
     
        assert(_isMale == true);
 
        if (_isFeesPaid == false) {
            revert("Kindly Pay The Fees ");
        }

        age = _age;
        isMale = _isMale;
        isFeesPaid = _isFeesPaid;
    }
}
