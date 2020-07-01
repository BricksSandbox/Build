const ERC20TokenBefore= artifacts.require("ERC20TokenBefore");

const ERC20TokenAfter = artifacts.require("ERC20TokenBefore");

module.exports = function(deployer) {

  deployer.deploy(ERC20TokenBefore);

};
