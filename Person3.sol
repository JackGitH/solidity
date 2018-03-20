pragma solidity ^0.4.4;
/*
  值传递默认是memory
  function moditify(uint memory age){
    age  = 100;
  }
 如果要改变引用改变成 storage类型,并且方法权限必须为internal 或者 private
  function moditify(uint storage age) internal{

    bytes(age)[0] =1;
  }

*/
contract Person3{
 uint _age;

 function Person(uint age){
   _age = age;
 }

  function f(){
   moditify(_age)
  }

function moditify(uint age){
  age  = 100;
}

function age() constant returns(uint){
  return _age;
}


}
