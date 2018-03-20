pragma solidity ^0.4.0;
/*
动态大小的字节数组以及相互转换

一：
string是一个动态尺寸的UTF-8编码字符串  他其实是一个可变字节数组 string是引用类型 而非值类型
bytes 动态字节数组 引用类型
根据经验 在我们不确定数据大小的情况下  我们可以使用string或者bytes 而当我们清楚的知道或者能够
将字节控制在 bytes1-bytes32 的情况下 ，就可以使用byts1-bytes32 这样可以降低内存使用
二：
String转换bytes
string字符换 并没有提供length方法获取字符串的长度 也没有提供方法修改某个索引的字节码  不过
我们可以把string转换为bytes  再调用length获取长度  当然也可以修改某个索引的字节码
三：
汉字字符串或者特殊字符串转bytes
四：
bytes可变数组length和push两个函数的使用

五：
对比分析：
不可变字节数组：
   如果我们清楚的知道我们存储的字节大，  我们可以通过bytes1 bytes2 来声明字节数组变量 不过通过bytes1来声明字节数组为不可变字节数组字节不可修改
   字节长度不可修改
可变字节数组：
  我们可以通过bytes name  = new bytes(length)  的方式  来声明可变大小和可修改字节内容的可变字节数组


*/

contract solidityTypes {

    //一：二：
    bytes public g = 0x6c697975656468756e;
    string public  name  ="liyuechun";

    function getBlength() constant returns(uint){
        return g.length;
    }
    function nameBytes() constant returns(bytes){
        return bytes(name);
    }
    function nameLength() constant returns (uint){
        return bytes(name).length;
    }
    function setNameIndex(bytes1 z) {

        bytes(name)[0] = z;
    }
    //三：特殊字符和汉字  不管是字母数字还是特殊符号 每个字母都对应一个bytes（字节）
    //  汉字转换为bytes以后 一共九个字节   也就是一个汉字3个字节 ，所以以后取字符串时 尽量不要带汉字 否则计算字符换长度时还得特殊处理
    string public name2  ="a+&520";
    function nameBytes2() constant returns(bytes){
        return bytes(name2);
    }
    function nameLength2() constant returns(uint){
        return bytes(name2).length;
    }

    string public name3  ="你好";
    function nameBytes3() constant returns(bytes){
        return bytes(name3);
    }
    function nameLength3() constant returns(uint){
        return bytes(name3).length;
    }

    //四:  当字节数组长度为2的时候，push一个字节进去，数组长度变为3  当字节数组里有3个字节的时候  当你通过length
    //     方法把数组长度变为2 字节数组最后一个字节将被从数组中移除
    types public  name4  = new bytes(2);//初始化两个字节长度的字节数组
    //设置字节数组的长度
    function setNameLength4(uint length){
        name4.length = length;
    }
    //返回字节数组的长度
    function nameLength4() constant returns(uint){
        return name.length;
    }
    //往字节数组中添加字节
    function pushBytes4(byte b){
        name5.push(b);
    }





}
