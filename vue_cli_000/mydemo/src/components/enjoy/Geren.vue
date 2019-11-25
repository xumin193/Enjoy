<template>
  <div>
    <div class="GeRF">
      <div class="GeRF1">
        <img src="../../../static/gerenA2.png" alt>
      </div>
      <span>张三</span>
    </div>
    <div class="GeRT">
      <ul class="GeRT1">
        <li style="font-size:15px;">会员权益</li>
        <li>
          <router-link to style="color: #fba700;font-size: 12px;">去开通</router-link>
        </li>
      </ul>
      <span style="color: #92969c;font-size: 12px;">开通会员每月平均可以帮你多赚2046元</span>
      <ul class="GeRT2">
        <li>
          <div class="GeRT3">
            <router-link to>
              <img src="../../../static/gerenA3.png" alt>
            </router-link>
          </div>
          <span>会员大礼包</span>
        </li>
        <li>
          <div class="GeRT3">
            <router-link to>
              <img src="../../../static/gerenA4.png" alt>
            </router-link>
          </div>
          <span>会员专享价</span>
        </li>
        <li>
          <div class="GeRT3">
            <router-link to>
              <img src="../../../static/gerenA5.png" alt>
            </router-link>
          </div>
          <span>会员日特权</span>
        </li>
        <li>
          <div class="GeRT3">
            <router-link to>
              <img src="../../../static/gerenA6.png" alt>
            </router-link>
          </div>
          <span>专属客服</span>
        </li>
      </ul>
    </div>
    <div class="GeRTh">
      <router-link to class="GeRTh1">我的订单</router-link>
      <router-link to class="GeRTh1">
        <img src="../../../static/dayu.png" alt>
      </router-link>
    </div>
    <div class="GeRTh">
      <!-- 优惠券单元格 -->
      <van-coupon-cell :coupons="coupons" :chosen-coupon="chosenCoupon" @click="showList = true"/>

      <!-- 优惠券列表 -->
      <van-popup v-model="showList" position="bottom">
        <van-coupon-list 
          :coupons="coupons"
          :chosen-coupon="chosenCoupon"
          :disabled-coupons="disabledCoupons"
          @change="onChange"
          @exchange="onExchange"
        />
      </van-popup>
    </div>
    <div class="GeRTh">
      <router-link to class="GeRTh1">地址管理</router-link>
      <router-link to class="GeRTh1">
        <img src="../../../static/dayu.png" alt>
      </router-link>
    </div>

<ul class="GeRFi">
     <li>
       <router-link to="/Geren" style="color:#2c3038;">
         <img src="../../../static/gerenS1.png" alt="">
         <div>热门商品</div>
       </router-link>
     </li>
     <li>
       <router-link to style="color:#2c3038;" >
         <img src="../../../static/gerenG1.png" alt="">
         <div>购物车</div>
       </router-link>
     </li>
     <li>
       <router-link to style="color:#2c3038;">
         <img src="../../../static/gerenR1.png" alt="">
         <div>个人中心</div>
       </router-link>
     </li>
   </ul>
  </div>
</template>
<script s>
const coupon = {
  available: 1,
  condition: "无使用门槛\n最多优惠12元",
  reason: "",
  value: 150,
  name: "优惠券名称",
  startAt: 1489104000,
  endAt: 1514592000,
  valueDesc: "1.5",
  unitDesc: "元"
};
export default {
  data() {
    return {
      showList:false,
      chosenCoupon: -1,
      coupons: [coupon],
      disabledCoupons: [coupon]
    }
  },

  methods: {
    onChange(index) {
      this.showList = false;
      this.chosenCoupon = index;
    },
    onExchange(code) {
      this.coupons.push(coupon);
    }
  }
}
</script>
<style scoped>
/* 显示用户登录层 */
ul > li {
  list-style: none;
  padding: 0px;
}
* {
  margin: 0;
  padding: 0;
}
a {
  text-decoration: none;
}
.GeRF {
  width: 100%;
  height: 199px;
  background-image: url("../../../static/gerenA1.png");
  text-align: center;
  color: #fff;
  font-size: 16px;
  position: relative;
  background-color: #f6f6f6;
}
.GeRF:before {
  content: "";
  display: table;
}
.GeRF1 {
  width: 70px;
  height: 70px;
  margin: 50px auto 10px;
  background-color: #fff;
  border-radius: 50%;
}
.GeRF1 > img {
  width: 59px;
  height: 57.5px;
}
/* 会员权益 */
.GeRT {
  width: 100%;
  height: 161.5px;
  box-sizing: border-box;
  padding: 20px;
  margin-top: 10px;
  background-color: #fff;
  border-top: 1px solid #e0e0e0;
  border-bottom: 1px solid #e0e0e0;
  font-family: PingFangSC-Regular;
}
.GeRT1 {
  display: flex;
  justify-content: space-between;
  margin-bottom: 5px;
}
.GeRT2 {
  display: flex;
  justify-content: space-around;
  margin-top: 10px;
}
.GeRT3 {
  width: 45px;
  height: 45px;
  background-color: #fff4e4;
  border-radius: 25px;
  text-align: center;
  line-height: 58px;
  margin: 5px auto;
}
.GeRT3 > a img {
  width: 25px;
  height: 25px;
}
.GeRT2 > li span {
  font-size: 12px;
  color: #2c3038;
}
.GeRTh {
  width:100%;
  height: 51px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  border-top: 1px solid #e0e0e0;
  border-bottom: 1px solid #e0e0e0;
  margin-top: 10px;
  box-sizing: border-box;
  padding: 0px 20px;
}
.GeRTh1 {
  /* font-size: 35px; */
  color: #2c3038 ;
  font: 13px PingFangSC-Regular;
}
.GeRFi{
  width: 100%;height: 49px;
  font-size: 10px;
  display:flex;
  justify-content:space-around;
  background-color: #fff;
  border-top: 1px solid #e0e0e0;
  position: fixed;
  margin-top: 61px;
  box-sizing: border-box;
  padding-top:5px;
  text-align: center;
}


</style>

