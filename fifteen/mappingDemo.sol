pragma solidity ^0.4.0;

contract mappingDemo{

    // 简单的mapping  具体的和结构体吧配合使用  在mapping.doc中使用
    mapping(address=>uint) balances;
    function update(address a,uint newBalance)public {
    balances[a] = newBalance;
   }

    function searchBalance(address a ) constant returns(uint){

        return balances[a];
    }
}
