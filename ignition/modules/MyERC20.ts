import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";


const MyERC20 = buildModule("SimpleERC20", (m) => {


  const myERC20 = m.contract("SimpleERC20", ["MyToken", "MTK"]);

  return { myERC20 };
});

export default MyERC20;
