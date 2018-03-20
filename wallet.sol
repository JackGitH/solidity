pragma solidity ^0.4.0;
/*
关于钱包：
  钱包地址 address其实就是20字节的整数   也就是160位  可以用uint160 来描述  16进制的40位
  一个16进制等于二进制的4位
  address  存储的是钱包地址  也可以使用 uint160来存储
  当记性转换的时候  网页上的转换工具因为你的16进制数据太长 可能转换出错  所以需要手工转换
  1 2 3 4 5 6 7 8 9 A B C D E F
  // 0xF055775eBD516e7419ae486C1d50C682d4170645     0x代表16进制
     0b1111 0000 0101 0101 0111 0111 0101 1110
合约常识：
   合约拥有者： msg.sender  是指的钱包地址
   一个合约部署后，通过钱包地址操作合约的人很多，如何正确的判断谁是合约的拥有者  判断方式很简单
   就是部署合约时，谁出的gas  谁就对合约具有拥有权
   合约地址:  一个合约部署后，会有一个合约地址 这个合约就代表合约自己
   this指的是什么：  this指的就是 当前合约地址

通过浏览器部署的时候，下方detail显示的内容中:
 contractAddress 是不会变的
 from 也是不会变的  from后边的内容就是 msg.sender
 gas就是通过下方input输入的字节码预估出来的消耗的gas
 transcation cost  和  execution cost    后边消耗的数值  加上右侧account里边的数值  加起来等于100，并且这两个加起来一定小于等于gas
 注意：  msg.sender 是动态的   是根据当前account钱包地址发生变化的  也就是右上角Accout中选择的不同的钱包发生变化

 在模拟的真实网络环境中 如果需要以太币 则登录网址  https://gitter.im/kovan-testnet/faucet   24小时之内只能索取一次
 如何索取：   直接@epheph 0xbjguihlbug899u7898b989h  后边跟的是自己的钱包地址，会给你发几个模拟的以太币
 获取到以后，先登录 https://remix.ethereum.org  注册帐号登录  选择一个使用

 每次部署一次合约，都会产生一个新的合约地址


 // 一个以太币等于1^18次方位
 addr.balance;是获取钱包的余额   如果在测试环境中运行函数查询，右下角输入框之中  钱包地址要加入双引号才不会报错
 并且返回的数值是位   一共18位  也就是10^18次方
 this.balance  代表的是合约里的余额  并不是钱包地址的余额  合约余额如果不玩往里边充值  一般是0



*/
contract wallet {
    address _owner;
    uint _address;
    function wallet(){
        _owner = 0xF055775eBD516e7419ae486C1d50C682d4170645;
        _address = 6799079879808080988980;
    }
    function owner() constant returns(address){
        return _owner;
   }
    function ownerUint160() constant returns (uint160){
        return uint160(_owner);
        //转换十进制
    }

    function toAddress() constant returns(address){
        return address(_address);
        // uint类型转换地址类型
    }
}
