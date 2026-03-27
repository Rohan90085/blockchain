pragma solidity ^0.8.0;
//banking
contract Voting {

    // Candidate structure
    struct Candidate {
        string name;
        uint voteCount;
    }

    // List of candidates
    Candidate[] public candidates;

    // Track voters
    mapping(address => bool) public hasVoted;

    // Constructor (runs once)
    constructor(string[] memory candidateNames) {
        for (uint i = 0; i < candidateNames.length; i++) {
            candidates.push(Candidate(candidateNames[i], 0));
        }
    }

    // Vote function
    function vote(uint candidateIndex) public {
        require(!hasVoted[msg.sender], "You already voted!");

        hasVoted[msg.sender] = true;
        candidates[candidateIndex].voteCount++;
    }

    // Get winner
    function getWinner() public view returns (string memory) {
        uint maxVotes = 0;
        uint winnerIndex = 0;

        for (uint i = 0; i < candidates.length; i++) {
            if (candidates[i].voteCount > maxVotes) {
                maxVotes = candidates[i].voteCount;
                winnerIndex = i;
            }
        }

        return candidates[winnerIndex].name;
    }
}