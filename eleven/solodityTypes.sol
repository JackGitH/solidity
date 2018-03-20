
pragma solidity ^0.4.0;
/*
1 固定大小字节数组（fixed-size byte arrays）之间的转换
2 固定大小字节数组（fixed-size bytes arrays）转动态大小字节数组（Dynamically-size byte array）
3 固定大小字节数组 不能直接转换为string
4 动态大小字节数组  转string
  本身就是动态大小的字节数组
  固定大小字节数组转string  需要先转动态字节数组  再转string


*/

//固定大小字节数组可以通过 bytes0-bytes32 来进行声明 固定大小字节数组的长度不可变
// 内容不可修改   b.length 是根据声明bytes（length）的长度决定的 并不是变量本身的长度
//   也就是   bytes1 b = 0xc1; b.length 是1
//            bytes2 b = 0xc1;  b.length就是2 本身内容并没有变化
contract solodityTypes {
   bytes name  = 0x6c697975656368756e;
    function bytesToBytesTest() constant returns(bytes1){
        return bytes1(name);// 往小转  那么只留下前边几位   后边的舍弃
    }
    function bytesTobytesTest2() constant returns(bytes2){
        return bytes2(name);
    }
    function bytesToBytes3() constant returns(bytes32){
        return bytes32(name);  //  往大转  那么在当前基础上  后边加0000000
    }

    //  固定数组转动态数组方法如下
    function zhuanHuan()constant returns(bytes){
        bytes memory b1 = new bytes(name.length);
        for(int i=0;i<name.length;i++){
            b1[i] = name[i];
        }
        return b1;
    }
    //  动态数组转string
    bytes name2  = new bytes(2);
    bytes name9 = new bytes(9);
    function solodityTypes(){
        name2[0] = 0x6c;
        name2[2] = 0x69;
        for(uint i=0;i<name.length;i++){
            name9[i]  = name[i];
        }
    }
    function nameToString() constant returns (string){
       return string(name2);
    }

    // 固定数组转换string   需要先转换为动态数组  再如上转换为string
    function nameToString2() constant returns (string){
        return string(name9);
    }

    // 9位数的bytes 转换成32位的bytes  再转成 string  那么string的长度 就是32位的长度  虽然显示的是“liyuechun”几个字符。但是detail里边就可以看到都是\u000\u000
    //  所以 写一个公用的转换方法  不是那么简单的，每一个长度都是不一样的
    //  代码省略


    //  正确的固定大小字节数组转string的代码


    function bytes32ToSrting(bytes32 x) constant returns(string){

        bytes memory bytesString = new bytes(32);
        uint charCount = 0;
        for(uint j=0;j<32;i++){

            //如下这个公示是重点
            // 比如十进制的6  110   转到12   6*2  000001100  就相当于左移2位    每次左移两位  就把一个长字符串  后边全是0的去掉  只留下实际的位数

            byte char  = byte(bytes32(uint(x)*2**(8*j)));//或者这样写  byte char  = byte(bytes32(uint(x)<<(8*j)));

            if(char!=0){
                bytesString[charCount]= char;


                charCount++;

            }
        }
        bytes memory bytesStringTrimmed = new bytes(charCount);
        for(uint j=0;j<charCount;j++){
            bytesStringTrimmed[j] = bytesString[j];

        }
        return string(bytesStringTrimmed);


    }
}
