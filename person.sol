pragma solidity ^0.4.4;
/*
pragma:版本声明
solidity:开发语言
o.0.4 : 当前合约的版本 0.4代表主版本 .4代表修复bug的升级版
^: 代表向上兼容  0.4.4 - 0.4.9  可以对我们当前的代码进行编译
*/
contract Person{
 uint _height;//身高
 uint _age;
 address _owner;

//构造函数
 function Person() {
   _height=180;
   _age = 20;
   _owner = msg.sender;
 }

function owner() constant returns (address){
  return  _owner;
}

  function setHeight(uint height) {
    _height = height;
  }
  function height() constant returns (uint) {
    return _height;
  }

  function setAge(uint age){
    _age = age;
  }

  function age() constant returns (uint){
    return _age;
  }

  function kill() {
    if(_owner == msg.sender){
      selfdestruct(_owner);
    }
  }
}
