pragma solidity ^0.4.0;

contract unitsDemo {
    //关于常用的单位的换算
    /*
     1 ehter = 1000 finney
     1 ether  = 1000000 szabo
     1 ether = 10 ** 18 wei



*/


    uint a  = 1 ether;
    uint b = 10 ** 18 wei;
    uint c = 1000000 szabo;
    uint d = 1000 finney;

    function isTrueAEqualsToB() public returns (bool){
       return a == b;
    }

    /*时间单位
      1 == 1 seconds;
      1 minutes == 60 seconds;
      1 hours == 60 minutes;
      1 days  == 24 hours;
      1 weeks  == 7 days;
      1 years  == 365 days;
      function test() constant public  returns(bool){
         return 1 == 1 seconds;
      }


      //区块和交易属性  全局变量  block  msg now tx
      block.blockhash(uint blockNumber) reeturns (bytes32):某个区块链的hash值；
      block.coinbase(address):当前区块挖矿地址
      block.difficulty(uint);当前区块难度
      block.gasLimit(uint)  当前区块的 gasLimit;
      block.number(uint); 当前区块编号
      block.timestamp(uint); 时间戳
      msg.data(bytes) 参数
      msg.gas(uint) 剩余的gas
      msg.sender(address) 当前发送消息钱包地址
      msg.sig(bytes4) 方法 ID
      msg.value(uint)  伴随消息附带的以太币数量
      now(uint) 时间戳  等价于 block.timestamp(uint)
      tx.gasprice(uint) 交易的gas单价
      tx.origin(address) 交易发送的地址
      //  错误处理
      assert(bool condition): 不满足条件 抛出异常
      require(bool condition): 不满足条件  抛出异常
      revert()  抛出异常
      0.4.10以前  都是使用throw  现在已经不适用throw了
       if(a ==b){revert()};
       assert(msg.sender==owner)
       require(msg.sender  == owner )   三个异常处理方式性能方面可以看自行百度






    */
}
