pragma solidity ^0.4.0;
/*
简单的for循环demo
*/
contract forDemo {
    function forDemo(){
    }
    function testVar() constant returns(uint8){
        uint8 a  =100;
        var b = a;
        return b;
    }

    function testVar1() constant returns(uint){

        uint a;
        for(uint16 i=0;i<255;i++){
            a = i;
        }
        return a;
    }
}
