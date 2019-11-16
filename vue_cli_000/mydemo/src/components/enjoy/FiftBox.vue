<template>
  <div>
    <img class="img1" src="../../../static/liheyq.jpg" >
     <h4 class="h4_1">邀请好友加入ENJOY,给TA发放价值50元礼券。好友完成首单消费后，你亦可获得价值50元礼券</h4>
    <mt-button class="btn" @click="btn2">即可邀请</mt-button>
    <h4 class="yaoqing"> 已成功邀请0位好友 | 获得0元礼券</h4>
    <table style="float:bath"></table>
    <div class="progress">
    <div class="fangkuang"></div>
    <span class="spot" style="left:4%">1</span>
    <span class="spot" style="left:12.5%">5</span>
    <span class="spot" style="left:25%">10</span>
    <span class="spot" style="left:50%">25</span>
    <span class="spot" style="left:92%">50</span>
    </div>
    <ul>
      <li>
        5人 <span>额外奖励<em>100元</em></span>
      </li>
      <li>
        10人 <span>额外奖励<em>100元</em></span>
      </li>
      <li>
        25人 <span>额外奖励<em>750元</em></span>
      </li>
      <li>
        50人 <span>额外奖励<em>2000元</em></span>
      </li>
    </ul>
    <div class="rewards">
      <div class="title"> 奖励明细</div>
    </div>
    <div class="yqdamu" v-show="yincang" @click="btn2">
      <div>点击右上角</div>
      <img src="../../../static/jiantou.png">
    </div>
  </div>
</template>

<script>
export default {
  data(){
    return{
      yincang:false
    }
  },
  methods:{
    btn2(){
      this.yincang=!this.yincang;
    }
  }

}
</script>

<style scoped>
  

   .yqdamu{
    display: block;
    position: fixed;
    left:0;
    right:0;
    top:0;
    bottom:0;
    background-color:rgba(0,0,0,.7);
    z-index: 1000;
    text-align:right;
  }
  .yqdamu div{
    margin-top:123px;
    color:#fff;
    font-size: 36px;
    display: inline-block;
    margin-right: 50px;
  }
  .yqdamu img{
    height:100px;width:80px;
    margin-top:50px;
    margin-right:50px;
  }
  .rewards{
    border-top:1px solid #e0e0e0;
    position:relative;
    margin:60px 40px;
    display: block;
  }
  .rewards .title{
    width:165px;
    text-align: center;
    font-size: 24px;
    color: #92969c;
    position:absolute;
    top:-15px;
    left:50%;
    margin-left:-84px;
    background-color:#fff;
  }
  *{margin:0 auto}
  ul{
    list-style:none;
    margin:0 20px;
    padding:0;
  }
  ul li{
    font:18px "宋体";
    color:#92969c;
    width:100%;
    margin-top:15px;
    
  }
  ul li span{
    display:inline-block;
    float:right;
  }
  ul li span em{
    display:inline-block;
    width:100px;
    font-style:normal;
    text-align: right;

  }


  .img1{
    width:100%;
    height:100%;
  }

  .h4_1{
    color:#999;
    font:14px "宋体";
    padding:12px;
  }
  .btn{
    background:#f00;
    color:#fff;
    font:14px "宋体";
    width:30%;
    height:40px;
    margin: 10% 35%;
  }
  .yaoqing{
    text-align: center;
    margin-bottom:20px;
    color:#333;
  }
  .fangkuang{
    margin:0 auto;
    width:95%;
    height:20px;
    border:solid 1px #ccc;
    border-radius:2px;
  }
  .progress {
    position: relative;
    height: 110px;
  }
  .progress .spot{
    display:block;
    position:absolute;
    top:25px;
    left:20px;
    color:#92969c;
  }
  .progress .spot:before{
    content:"";
    display:block;
    width:0;
    height:30px;
    border-right:1px dotted #92969c;
    margin:10px auto;
  }
  /* .yqdamu{
    display:none;
  }  */
  
</style>