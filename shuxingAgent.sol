pragma solidity ^0.4.4;

/*
属性
  属性  public internal private  默认是 internal


  其中  private 和 internal  是不能被外部访问的

  如果是public  会默认生成构造方法
  如果写get方法 会覆盖掉 自己生成的默认public 方法


方法

方法默认是  public   其中只有public的才会被外部访问 也就是idea编译的时候生成的右下角合约中
*/
contract Person {

  uint internal _age;
  uint _weight;
  uint private _height;
  uint public _money;


  function _money() constant returns (uint) {
    return 100;
  }


  function age()  constant public returns (uint) {
    return 100;
  }


}
