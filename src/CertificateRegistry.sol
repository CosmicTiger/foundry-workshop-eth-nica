// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CertificateRegistry {
    struct Certificate {
        string studentName;
        string degree;
        string documentHash;
    }

    mapping(uint256 => Certificate) public certificates;
    uint256 public certificateCount;

    function registerCertificate(
        string memory name,
        string memory degree,
        string memory docHash
    ) public {
        certificates[certificateCount] = Certificate(name, degree, docHash);
        certificateCount++;
    }

    function getCertificate(
        uint256 id
    ) public view returns (string memory, string memory, string memory) {
        Certificate memory cert = certificates[id];
        return (cert.studentName, cert.degree, cert.documentHash);
    }
}
