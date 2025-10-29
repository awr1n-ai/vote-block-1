// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title QuickPoll
 * @dev A simple immutable poll where users can vote for predefined options and see instant results.
 * Once created, the poll question and options cannot be changed.
 */
contract QuickPoll {
    // --- State Variables ---
    address public owner;
    string public question;
    string[] public options;

    // Mapping of option index to votes
    mapping(uint256 => uint256) public votes;

    // Track if an address has already voted
    mapping(address => bool) public hasVoted;

    // --- Events ---
    event Voted(address voter, uint256 optionIndex);

    // --- Constructor ---
    /**
     * @param _question The poll question (e.g., "Which programming language do you prefer?")
     * @param _options The answer options (e.g., ["Solidity", "Python", "Rust"])
     */
    constructor(string memory _question, string[] memory _options) {
        require(_options.length >= 2, "At least two options required");
        owner = msg.sender;
        question = _question;
        options = _options;
    }

    // --- Voting Function ---
    /**
     * @notice Cast a vote for one of the poll options
     * @param _optionIndex The index of the option to vote for (starting at 0)
     */
    function vote(uint256 _optionIndex) external {
        require(_optionIndex < options.length, "Invalid option");
        require(!hasVoted[msg.sender], "You have already voted");

        hasVoted[msg.sender] = true;
        votes[_optionIndex] += 1;

        emit Voted(msg.sender, _optionIndex);
    }

    // --- View Functions ---
    /**
     * @notice Returns the total number of options
     */
    function getOptionCount() external view returns (uint256) {
        return options.length;
    }

    /**
     * @notice Returns all options and their current vote counts
     */
    function getResults() external view returns (string[] memory, uint256[] memory) {
        uint256[] memory resultCounts = new uint256[](options.length);
        for (uint256 i = 0; i < options.length; i++) {
            resultCounts[i] = votes[i];
        }
        return (options, resultCounts);
    }
}



