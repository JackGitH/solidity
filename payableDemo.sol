pragma solidity ^0.4.0;
/*
转账demo的代码实现
其中msg也是一个全局msg
msg.value  就是测试页面右侧帐号下面  要输入的value后边的值
也就是转账金额
*/

contract payableDemo {

    address Account  = 0xF055775eBD516e7419ae486C1d50C682d4170645;
    function payableDemo(){

    }
   // 从合约发起方  向页面转账页面的某个地址  转账 msg.value个以太币  但是是位
    function deposit() payable{

        Account.transfer(msg.value);
    }
    // 查看转账余额
     function getAccountBalance() constant returns(uint){
         return Account.balance;
     }

     function getOwnerBalance() constant returns(uint){
         address Owner  = msg.sender;//获取当前页面钱包的地址
         return Owner.balance;

     }

    // 从合约发起方  向页面转账页面的某个地址  转账 msg.value个以太币  但是是位
    // 转账的第二种方式是send方式  send有返回值
    // send()方法的风险：  1 调用递归的深度不能超过1024  2 如果gas不够 会执行失败  3 如果使用这个方法 要检查成功与否 4 transfer 相对 send较安全
    function deposit() payable returns (bool){

      return   Account.send(msg.value);
    }


}
