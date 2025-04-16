// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Patientdata {

    struct Patient {
        string name;
        uint age;
        string gender;
        string diagnosis;
    }

    mapping(address => Patient) public patients;

    event PatientRegistered(address patientAddress, string name);

    function registerPatient(string memory _name, uint _age, string memory _gender, string memory _diagnosis) public {
        patients[msg.sender] = Patient(_name, _age, _gender, _diagnosis);
        emit PatientRegistered(msg.sender, _name);
    }

    function getPatient(address _addr) public view returns (string memory, uint, string memory, string memory) {
        Patient memory p = patients[_addr];
        return (p.name, p.age, p.gender, p.diagnosis);
    }
}
