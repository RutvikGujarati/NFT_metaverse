async function main() {
  const MyNFT = await ethers.getContractFactory("Monkey");

  // Start deployment, returning a promise that resolves to a contract object
  const myNFT = await MyNFT.deploy();
  console.log("Contract deployed to address:", myNFT.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });

  // 0x969845a5F39182F8b9F3062e08c2eB4E97d3f2F0
  