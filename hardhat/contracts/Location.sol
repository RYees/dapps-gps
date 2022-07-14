// SPDX-License-Identifier: GPL-3.0
// 0x7fd4d27a5D9340aC6314ff5b87DEf0054301523B
pragma solidity ^0.4.18;

contract Courses {
    struct Instructor {
        uint age;
        string fName;
        string lName;
    }

    mapping (address => Instructor) instructors;

    address[] public instructorAccts;

    function setInstructor(address _address, uint _age, string _fName, string _lName) public {
        //var instructor = instructors[_address];
        Instructor storage instructor = instructors[_address];

        instructor.age = _age;
        instructor.fName = _fName;
        instructor.lName = _lName;

        instructorAccts.push(_address) -1;
    }
    function getInstructors() view public returns (address[]) {
        return instructorAccts;
    }

    function getInstructor(address _address) view public returns (uint, string memory, string memory) {
        return (instructors[_address].age, instructors[_address].fName, instructors[_address].lName);
    }

    function countInstructors() view public returns (uint) {
        return instructorAccts.length;
    }

}