pragma solidity ^0.4.0;
/*
元祖： 本人理解的就是  一个方法可以返回不同类型数据
       数组可以直接返回数组  但是字典类型 就是map(string=>uint) 不能直接返回字典 元祖就是为了解决这种问题才出现的

function  f() constant returns (uint ,bool,string){
    return (101,true,"ghc");
  }


*/
contract tuplesDemo {

     mapping(uint=>string) students;
    function c(){
        students[0] = "ghc";
        students[1] ="1224";

    }

    function studentsNames() constant returns (string name0,string name1){
        name0 = students[0];
        name1  = students[1];
    }//这里不用写返回值   不用写return  就相当于return了  等价于下面这个方法


    function studentsNames2() constant returns (string name0,string name1){
        name0 = students[0];
        name1  = students[1];
        return(name0,name1);
    }


    //mapping类型的public  自己生成的get方法  如果自己写get方法   后边带参数id的  是这样写的 如下
    mapping(uint =>string) public students2 ;
    function c(){
        students2[0] = "ghc";
        students2[1] = "1224";
    }
    function  students2 (uint id) constant returns (string){
        return students2[id];
    }
    // 如果按照下面这张方法 是错误的  会报错
    // funcion stduents2() constant returns(map(uint=>string)){
        //   returns  ...
    // }

}
