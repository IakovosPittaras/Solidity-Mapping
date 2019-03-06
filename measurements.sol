pragma solidity ^0.4.17;

contract measurements {

    mapping(uint => uint) public map;
    uint[] public mapIndices;

    function initialize(uint _i) public {
        for (uint i=0 ; i< _i ; i++) {
            map[i] = i+2;
            mapIndices.push(i);
        }
    }

    function searchByKey(uint i) public returns (uint) {
        return map[i];
    }

    function searchByValue(uint _i) public returns (uint) {
        uint mapLength = mapIndices.length;
        for (uint i=0 ; i< mapLength ; i++) {
            if(map[i] == _i){
                return i;
            }
        }
        return 0;
    }

    function deleteByKey(uint i) public {
        delete map[i];
        delete mapIndices[i];
        mapIndices.length--;
    }

    function deleteByValue(uint _i) public  {
        uint mapLength = mapIndices.length;
        for (uint i=0 ; i< mapLength ; i++) {
            if(map[i] == _i){
                delete map[i];
                delete mapIndices[i];
                mapIndices.length--;
            }
        }
    }

    function insert(uint _i) public {
        map[_i] = _i + 2;
        mapIndices.push(_i);
    }

}