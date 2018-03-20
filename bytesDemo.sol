pragma solidity ^0.4.0;

/*
固定大小字节数组可以通过bytes1,bytes2,bytes3,....bytes32来声明  最大就是bytes32  byte别名就是bytes1  也就是一个字节  一个数字或者字母就是一个字节
一个汉字三个字节
bytes  内容不可变；长度也不可变；改变就会报错
bytes：
  bytes1只能存储一个字节 也就是二进制的8位
  bytes2只能存储两个字节，也就是二进制的16位
*/

contract bytesDemo {
    //  0x670x750x6f0x680x6f0x6e0x670x630x680x610x6e0x67   guohongchang  16进制的表示

    bytes1 b1  = 01100111 ; // 0010  0111   也就是8位二进制
    bytes2 b2  = 0110011101101000; // 0110 0111 0110 1000
    //.....
    bytes32 b32 = 0x670;


    //通过所以访问数组的第几位
    function readIndex1Bytes() constant returns(byte){

        return  b32[1]; //  按照两位进行分租  返回的是67
    }


    function getBytesLength() constant returns (uint){
        return b1.length;//  定长数组可以返回length  length代表的是字节长度
    }

    function bytesDemo(){

    }
}
