// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SimpleERC20 is ERC20, Ownable {

    event ContractCreated(address contractAddress, string name);

    constructor(string memory name, string memory symbol)
        ERC20(name, symbol)
        Ownable(msg.sender)
    {
        emit ContractCreated(address(this), name);
    }

    function balanceOf(address account) public view override returns (uint256) {
        return super.balanceOf(account);
    }

    function mintToken(address account, uint256 amount) public onlyOwner {
        require(account != owner(), "Cannot mint to owner!");
        super._mint(account, amount);
    }

    function transfer(address to, uint256 value)
        public
        override
        returns (bool)
    {
        return super.transfer(to, value);
    }

    function burnToken(uint96 amount) external {
        super._burn(msg.sender, amount);
    }
}
