// ethers.js comes built in to HardHat
// Import ethers
const { ethers } = require("hardhat");
async function main() {
    // Tell the secript which contrat we want to deploy
    const contract = await ethers.getContractFactory("Bwitems");

    // Deploy it
    const deployedContract = await contract.deploy();
        // Wait for deployment to finish
        await deployedContract.deployed();

    // Print the address of the deployed contract
    console.log("NFT Contract deployed to: ", deployedContract.address);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });