// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract HealthRecords {
    struct Record {
        address uploader;
        string cid;
        uint256 timestamp;
    }

    mapping(address => uint256[]) private patientRecords;
    mapping(uint256 => Record) public records;
    mapping(uint256 => mapping(address => bool)) public accessGranted;
    uint256 public nextRecordId;

    event RecordCreated(uint256 indexed recordId, address indexed patient, address indexed uploader, string cid);
    event AccessGranted(uint256 indexed recordId, address indexed grantee);
    event AccessRevoked(uint256 indexed recordId, address indexed grantee);

    modifier onlyPatient(address patient) {
        require(msg.sender == patient, "caller must be patient");
        _;
    }

    function addRecord(address patient, string calldata cid) external returns (uint256) {
        require(bytes(cid).length > 0, "cid required");
        uint256 id = nextRecordId++;
        records[id] = Record({uploader: msg.sender, cid: cid, timestamp: block.timestamp});
        patientRecords[patient].push(id);
        accessGranted[id][msg.sender] = true;
        emit RecordCreated(id, patient, msg.sender, cid);
        return id;
    }

    function grantAccess(uint256 recordId, address grantee) external {
        require(_isRecordOf(msg.sender, recordId), "caller not patient for record");
        accessGranted[recordId][grantee] = true;
        emit AccessGranted(recordId, grantee);
    }

    function revokeAccess(uint256 recordId, address grantee) external {
        require(_isRecordOf(msg.sender, recordId), "caller not patient for record");
        accessGranted[recordId][grantee] = false;
        emit AccessRevoked(recordId, grantee);
    }

    function canAccess(uint256 recordId, address who) public view returns (bool) {
        return accessGranted[recordId][who];
    }

    function getRecordsForPatient(address patient) external view returns (uint256[] memory) {
        return patientRecords[patient];
    }

    function getRecord(uint256 recordId) external view returns (address, string memory, uint256) {
        Record memory r = records[recordId];
        return (r.uploader, r.cid, r.timestamp);
    }

    function _isRecordOf(address patient, uint256 recordId) internal view returns (bool) {
        uint256[] memory list = patientRecords[patient];
        for (uint256 i = 0; i < list.length; i++) {
            if (list[i] == recordId) return true;
        }
        return false;
    }
}
