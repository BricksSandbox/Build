const ERC20TokenBefore = artifacts.require("ERC20TokenBefore");

contract("ERC20TokenBefore", async accounts => {
  it("It should be able to transfer from one account to another  (owner should be able to dois after contract is deploayed)", async () => {

  let coin;
  let coinSupply;

   coin = await ERC20TokenBefore.deployed();


    //assert.notEqual(newSupply, coinSupply, "assetion here")

 })
});
