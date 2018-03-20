pragma solidity ^0.4.4;

/*
属性
  属性  public internal private  默认是 internal


  其中  private 和 internal  是不能被外部访问的

  如果是public  会默认生成构造方法
  如果写get方法 会覆盖掉 自己生成的默认public 方法


方法

方法默认是  public   其中只有public的才会被外部访问 也就是idea编译的时候生成的右下角合约中

总结：
 不管是方法还是属性  只有public类型的才可以通过合约地址进行访问  合约内部的this就是当前合约的地址
 在合约内部如果要访问非public类型的属性和函数  即直接开始访问 不要视图通过this去访问
*/
contract Person {

  uint _weight;
  uint private _height;
  uint internal _age;
  uint public _money;


  function test0() constant returns (uint) {
    return _weight;
  }
  function test1()  constant public returns (uint) {
    return _height;
  }
  function test2()  constant internal returns (uint) {
    return _age;
  }
  function test3()  constant private returns (uint) {
    return _money;
  }

/*
  如果访问内部  非 public方法 ，  直接方法名调用即可
  如果是用this指针来调用  那么只能调用public的
*/
  function test4() constant returns (uint){
     test0();
     return 0;
  }


}

/*
solidity 是一个静态类型的语言
所以需要编译期间指定变量类型  包括本地变量和状态变量
提供的基本类型是
  booleans
  Integer
  Address
  fix type arrays 订场数组
  ration and Integer Literals,String Literals 有理数和整型
  Enums 枚举
  Function Types 函数
引用数据类型
 不定长字节数组 bytes
 字符串 String
 数组  array
 结构体 Struts

*/
contract Animal1 {
  uint _sex;// 1 男  2 女
  function Animal1() {
    _sex = 1;
  }
  function sex() constant returns (uint) {
    return  _sex;
  }
}

/**
合约的继承
  方法：只有public类型的函数才能被继承到子合约里边
  属性： 只有private类型不会被继承过来，其他的都可以
  合约是可以多继承同时，把方法名相同的方法重写，会以重写的函数为优先级
函数的重写
  继承了函数的
**/
contract Dog is Person ,Animal1{

  function sex() constant returns (uint) {
    return  100;
  }

}
