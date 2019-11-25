<template>
  <div style="background-color:#f6f6f6">
    <div class="GerenS">
      <form action="/">
        <van-search
          v-model="value"
          placeholder="请输入搜索关键词"
          show-action
          shape="round"
          @search="onSearch"
          class="GerenS1"
        >
          <div slot="action" @click="onSearch">搜索</div>
        </van-search>
      </form>
    </div>
    <van-swipe :autoplay="3000" style="width:100%">
      <van-swipe-item v-for="(image, index) in images" :key="index">
        <img v-lazy="image" style="width:100%" :height="200">
      </van-swipe-item>
    </van-swipe>
    <div>
      <ul class="GerenS2">
        <li>
          <router-link to>
            <div class="GerenS4">
              <img src="../../../static/gerenA4x.png" alt>
            </div>
            <span>全部商品</span>
          </router-link>
        </li>
        <li>
          <router-link to>
            <div class="GerenS3">
              <img src="../../../static/gerenA5x.png" alt>
            </div>
            <span>优选美酒</span>
          </router-link>
        </li>
        <li>
          <router-link to>
            <div class="GerenS3">
              <img src="../../../static/gerenA6x.png" alt>
            </div>
            <span>好味食物</span>
          </router-link>
        </li>
        <li>
          <router-link to>
            <div class="GerenS3">
              <img src="../../../static/gerenA7x.png" alt>
            </div>
            <span>品质好物</span>
          </router-link>
        </li>
      </ul>
    </div>
    <div class="GerenST1">
      <span>- 精品推荐 -</span>
    </div>
    <div>
      <div class="GerenST2">
        <div class="GerenST3" v-for="(item,index) of image" :key="index">
          <img :src="item.img" alt>
          <div class="GerenST4">{{item.title}}</div>
          <div class="GerenST5">¥{{item.price}}</div>
        </div>
      </div>
    </div>
    <div class="GerenST1">
      <span>- 酒品专区 -</span>
    </div>
    <div>
      <div class="GerenST2">
        <div class="GerenST3" v-for="(item,index) of image" :key="index">
          <img :src="item.img" alt>
          <div class="GerenST4">{{item.title}}</div>
          <div class="GerenST5">¥{{item.price}}</div>
        </div>
      </div>
    </div>
    <div class="GerenST1">
      <span>- 食品专区 -</span>
    </div>
    <div>
      <div class="GerenST2">
        <div class="GerenST3" v-for="(item,index) of image" :key="index">
          <img :src="item.img" alt>
          <div class="GerenST4">{{item.title}}</div>
          <div class="GerenST5">¥{{item.price}}</div>
        </div>
      </div>
    </div>
    <div class="GerenST1">
      <span>- 物品专区 -</span>
    </div>
    <div>
      <div class="GerenST2">
        <div class="GerenST3" v-for="(item,index) of image" :key="index">
          <img :src="item.img" alt>
          <div class="GerenST4">{{item.title}}</div>
          <div class="GerenST5">¥{{item.price}}</div>
        </div>
      </div>
    </div>
    <div class="GerenSTh1">
      <router-link to>
        <span>查看全部商品</span>
        <img src="../../../static/gerenS7.png" alt="">
      </router-link>
    </div>
    <tabbar></tabbar>
  </div>
</template>
<script >
import Tabbar from "./Tabbar.vue";
export default {
  data() {
    return {
      value: "",
      images: [
        "../../../static/gerenS3.jpg",
        "../../../static/gerenS4.jpg",
        "../../../static/gerenS5.jpg",
        "../../../static/gerenS6.jpg"
      ],
      image: [
        { title: "拉拉手京东方", img: "../../../static/gerenS3.jpg", price: 350 },
        { title: "国家开发地方", img: "../../../static/gerenS4.jpg", price: 120 },
        { title: "的房交会的浮", img: "../../../static/gerenS5.jpg", price: 450 },
        { title: "黄金价格的回", img: "../../../static/gerenS6.jpg", price: 680 }
      ]
    };
  },
  methods: {
    onSearch() {},
    onCancel() {}
  },
  components: {
    tabbar: Tabbar
  }
};
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
.GerenS {
  padding: 5px 10px;
  background-color: #26cbff;
}
.GerenS1 {
  border-radius: 5px;
  padding: 3px;
}
/* 导航栏 */
.GerenS2 {
  display: flex;
  justify-content: space-around;
  border-bottom: 1px solid #e0e0e0;
  background-color: #fff;
  margin-top: -4px;
  box-sizing: border-box;
  padding-bottom: 5px;
}
.GerenS2 > li a {
  color: #2c3038;
  font-size: 4px;
}
.GerenS3 {
  width: 35px;
  height: 35px;
  background-color: #fff4e4;
  border-radius: 25px;
  text-align: center;
  line-height: 52px;
  margin: auto;
}
.GerenS4 {
  width: 35px;
  height: 35px;
  background-color: #fff4e4;
  border-radius: 25px;
  text-align: center;
  line-height: 48px;
  margin: auto;
}
/* 精品推荐 */
.GerenST1 {
  width: 100%;
  height: 37px;
  text-align: center;
  line-height: 34px;
  font-size: 14px;
  font-weight: bold;
  float: left;
  background-color: #fff;
}
.GerenST2 {
}
.GerenST3 {
  float: left;
  width: 47.4%;
  margin: 0px 1% 10px 1%;
  font-size: 12px;
  border:1px solid #e0e0e0; 
    background-color: #fff;
}
.GerenST3 > img {
  width: 100%;
  height: 120px;
}
.GerenST4 {
  text-indent: 5px;
  margin-top: 3px;
}
.GerenST5 {
  text-indent: 5px;
  margin-top: 5px;
}
.GerenSTh1{
  width: 100%;
    background-color: #fff;
  margin-bottom: 65px;
  text-align: center;
}
.GerenSTh1>a{
 color:#2c3038;
 font-size: 12px;
   position: relative;
}
.GerenSTh1>a img{
 position: absolute;
 top:3px; left: 78px;
}
/* 以下可删除 */
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

.GeRFi {
  width: 100%;
  height: 49px;
  font-size: 10px;
  display: flex;
  justify-content: space-around;
  background-color: #fff;
  border-top: 1px solid #e0e0e0;
  position: fixed;
  bottom: 2px;
  box-sizing: border-box;
  padding-top: 5px;
  text-align: center;
}
</style>

