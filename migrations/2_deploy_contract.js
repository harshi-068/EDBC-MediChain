const Patientdata = artifacts.require("Patientdata");

module.exports = function (deployer) {
  deployer.deploy(Patientdata);
};
