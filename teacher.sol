//Create a contract Teacher with a function subject().Make a contract ClassTeacher that inherits it.
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Teacher contract
contract Teacher {
    function subject() public view virtual returns (string memory) {
        return "General Subject";
    }
}

// ClassTeacher contract inheriting Teacher
contract ClassTeacher is Teacher {
    string private _subject;

    constructor(string memory subjectName) {
        _subject = subjectName;
    }

    function subject() public view override returns (string memory) {
        return _subject;
    }
}