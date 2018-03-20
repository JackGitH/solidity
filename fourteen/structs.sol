pragma solidity ^0.4.0;
/*
结构体对象  类似于java 的实体对象

*/
contract structs {

  struct Person{
      uint  age;
      uint  stuID;
      string name;
  }
    //初始化一个结构体方法1
    Person  _person1 = Person(18,101,"ghc");// 初始化的时候默认的都是storage类型
    //方法2
    Person _person2 = Person({age:18,stuID:101,name:"ghc"});//初始化的时候默认的都是storage类型

    Person[] persons  = new Person[](3);
     function Students(){
         persons[1] = _person1;
         persons[2] = _person2;
     }

    //如果在方法内部进行初始化 默认的就是 memory类型  如果不加桑memory这个关键字 会报错
    function f(){
        Person memory person1  = Person(19,104,"ghc");
    }
}
