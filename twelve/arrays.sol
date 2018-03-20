pragma solidity ^0.4.0;

contract arrays {
    // 数组长度为5  数组里边的类型为uint类型    当数组少于声明的长度时，  剩下的其实是默认0的
    uint[5] T  = [1,2,3,4,5];
    uint[5] T2 = [1,2,3];// T2后边其实是默认还有两个０的　,固定长度的数组 是不能直接修改length值的;注意 T2.push（6），也会报错，因为默认后边其实是有0的  push不进去
    // for循环求和
      function getNumbers() constant returns(uint){

          uint num  =0;
          for(uint i =0;i<T.length;i++){
              num  = num + T[i];
          }
          return num;
      }

        // 修改数组内容可以直接根据下标进行修改
       function setIndexNumber() public {
           T[0] =10;
       }

    //  可变数组的声明和使用
    uint[] T3 =[1,2,3];//  T3没有声明长度 所以T3是可变的   如果缩减长度 那么是祛除后边的  前边的保留；如果想清空，那么把length改为0即可
                        // T3.push的时候  会自动增加长度
     function getT3Length() constant returns(uint){
         return T3.length;
     }
     function setT3Length(uint len){
         T3.length  = len;
     }
    //可变数组方式2  初始化一个长度为5的可变数组
    uint [] T4 = new uint[](5);// 构造函数
    function arrays(){
        for(uint i=0;i<5;i++){
            T4[i]  = i+1; //  这样长度就是初始化为5了   如果写成这个样 T4.pish(i)  那么循环下来  长度就变成10了
        }
    }
    //  二维数组的声明
    uint[2][3] T5= [[1,2],[3,4],[5,6]];//T5.length是3  默认是story类型   如果改成memory类型  则长度不可以再改变
    uint[2][]  T6 = new uint[2][](5);
    function  pushArrayToT1(uint[2] _t){
        T6.push(_t);
    }

    //函数内部创建memory类型的数组 是可以通过new 关键字来创建  memory数组一旦创建 就不能通过length修改其长度
    function f(uint leng){
        uint[] memory a  = new uint[](7);
        bytes memory b  = new bytes(len);
    }

// 如果在函数内部  memory类型固定长度数组 不可以直接赋值给storate、memory类型的可变数组，函数外部可以
 //正确的使用方式是：  方法内部  声明的时候 两边都让他不可变  unit[3] memory  x  = [uint(1),3,4]
    function  f() public{

        uint[] memory x  = [uint[1],3,4];
    }

    // 创建可变字节数组除了可以通过bytes ｂ　＝　new bytss(len)来创建以外  我们还可以 通过byte[] b 来进行声明
    // 而 bytes0-bytes32 我们可以通过 byte[len]来创建   len的范围 是0-32  不过这两种方式创建的不可变字节数组有一点区别。
    // bytes0-bytes32   直接声明的不可变字节数组中 长度不可变 内容可修改  而byte[len] 创建的字节数组中  长度不可变 内容可修改
    bytes9 a  = 0x6c9778766789056e;
    bytes[9] aa =   [bytes(0x6c),0x69,0x79,0x75];
    function setIndex0Bytes()public{
        a[0] = 0x89;//这是错误的  不可以修改
    }
    function setIndex0Bytes0(){
        aa[0] = 0x89;//这个是可以的
    }
    //下面是完全等价的两个等式
    bytes ccc = new bytes(10);
    byte[] cc  = new byte[](10);

    //枚举类  详见枚举类.doc  也就是13章的






}
