// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Voting {
    uint public option1Votes;
    uint public option2Votes;
    mapping(address => bool) public hasVoted;

    function voteOption1() public {
        require(!hasVoted[msg.sender], "Already voted");
        option1Votes++;
        hasVoted[msg.sender] = true;
    }

    function voteOption2() public {
        require(!hasVoted[msg.sender], "Already voted");
        option2Votes++;
        hasVoted[msg.sender] = true;
    }

    function getVotes() public view returns (uint, uint) {
        return (option1Votes, option2Votes);
    }
}