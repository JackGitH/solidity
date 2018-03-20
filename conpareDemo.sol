pragma solidity ^0.4.0;


// 比较运算符  <=  <  == !=   >= > 返回值为bool类型
//位操作： &(与） , |(或) , ^ (异或)， ~ (非）
//数学运算  + -  一元运算 + *  /  % 求余 ** 次方   << 左移   >> 右移
//solidity 目前没有支持  double 、 float  如果   7/2  会得到3 即无条件舍去
//  如果运算符是字面量  则不会截取    另外除 0  会抛出异常

contract conpareDemo {
    uint8  a;
    uint8  b;

    function conpareDemo(){
        a = 7;// 0000 0101
        b = 8;// 0000 1000
    }

    // & ┃ ^ 亦或  ～ 非
    function yu() constant returns(uint8){
        return  a & b;
        // 0000 0101
        // 0000 1000
        // 0000 0000
        // 代表都为1 则为1 否则为0
    }

    function huo() constant returns(uint8){
        return  a & b;
        // 0000 0101
        // 0000 1000
        // 0000 1101
        // 1+0+4+8 = 13
        // 代表只要一个为1 则为1 否则为0
    }

    function yihuo() constant returns(uint8){
        return  a ^ b;
        // 0000 0101
        // 0000 1000
        // 0000 1101
        // 1+0+4+8 = 13
        // 两个都为1 则为0  两个相反的才为1
    }


    function fei() constant returns(uint8){
        return  ~ a ;
        // 0000 0101
        // 1111 1010
    }


    function leftShift(uint8 b) constant returns(uint8){
        return a<<b;
        // 0000 1000
        // 0010 0000
        //x相当于a的b次方

        // 当然右移就是相当于a的负b次方
    }
}
