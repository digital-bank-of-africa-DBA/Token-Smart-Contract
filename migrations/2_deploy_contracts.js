const SafeBank = artifacts.require("SafeBank");

module.exports = function(deployer) {
  deployer.deploy(SafeBank);
};
