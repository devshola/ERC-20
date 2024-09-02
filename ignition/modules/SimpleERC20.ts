import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";


const SimpleERC20 = buildModule("SimpleERC20", (m) => {


  const simpleERC20 = m.contract("SimpleERC20", ["Token", "TKN"]);

  return { simpleERC20 };
});

export default SimpleERC20;
