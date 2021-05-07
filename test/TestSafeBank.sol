// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/SafeBank.sol";

contract TestSafeBank {

  function testInitialBalanceUsingDeployedContract() public {
    SafeBank safeBank = SafeBank(DeployedAddresses.SafeBank());

    uint expected = 10000;

    Assert.equal(safeBank.getBalance(tx.origin), expected, "Owner should have 10000 SafeBank initially");
  }

  function testInitialBalanceWithNewMetaCoin() public {
    SafeBank safeBank = new SafeBank();

    uint expected = 10000;

    Assert.equal(safeBank.getBalance(tx.origin), expected, "Owner should have 10000 SafeBank initially");
  }

}
