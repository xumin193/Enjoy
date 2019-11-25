<template>
  <div>
    <div class="GerenG1">
      <img  src="../../../static/gerenG3.png" alt>
      <span>我的购物车</span>
    </div>
    <div>
      <van-checkbox-group class="card-goods" v-model="checkedGoods">
        <van-checkbox class="card-goods__item" v-for="item in goods" :key="item.id" :name="item.id">
          <van-card
            :title="item.title"
            :desc="item.desc"
            :num="item.num"
            :price="formatPrice(item.price)"
            :thumb="item.thumb"
          />
        </van-checkbox>
      </van-checkbox-group>
      <van-submit-bar
        style="margin-bottom:52px;"
        :price="totalPrice"
        :disabled="!checkedGoods.length"
        :button-text="submitBarText"
        @submit="onSubmit"
      />
    </div>

    <tabbar></tabbar>
  </div>
</template>
<script >
import Tabbar from "./Tabbar.vue";
import { Checkbox, CheckboxGroup, Card, SubmitBar, Toast } from "vant";
export default {
  components: {
    tabbar: Tabbar,
    [Card.name]: Card,
    [Checkbox.name]: Checkbox,
    [SubmitBar.name]: SubmitBar,
    [CheckboxGroup.name]: CheckboxGroup
  },
  data() {
    return {
      checkedGoods: ["1", "2", "3"],
      goods: [
        {
          id: "1",
          title: "进口香蕉",
          desc: "约250g，2根",
          price: 200,
          num: 1,
          thumb:
            "https://img.yzcdn.cn/public_files/2017/10/24/2f9a36046449dafb8608e99990b3c205.jpeg"
        },
        {
          id: "2",
          title: "陕西蜜梨",
          desc: "约600g",
          price: 690,
          num: 1,
          thumb:
            "https://img.yzcdn.cn/public_files/2017/10/24/f6aabd6ac5521195e01e8e89ee9fc63f.jpeg"
        },
        {
          id: "3",
          title: "美国伽力果",
          desc: "约680g/3个",
          price: 2680,
          num: 1,
          thumb:
            "https://img.yzcdn.cn/public_files/2017/10/24/320454216bbe9e25c7651e1fa51b31fd.jpeg"
        }
      ]
    };
  },

  computed: {
    submitBarText() {
      const count = this.checkedGoods.length;
      return "结算" + (count ? `(${count})` : "");
    },
    totalPrice() {
      return this.goods.reduce(
        (total, item) =>
          total + (this.checkedGoods.indexOf(item.id) !== -1 ? item.price : 0),
        0
      );
    }
  },
  methods: {
    formatPrice(price) {
      return (price / 100).toFixed(2);
    },
    onSubmit() {
      Toast("点击结算");
    }
  }
};
</script>
<style lang="less">
.card-goods {
  padding: 10px 0;
  background-color: #fff;
  &__item {
    position: relative;
    background-color: #fafafa;
    .van-checkbox__label {
      width: 100%;
      height: auto; // temp
      padding: 0 10px 0 15px;
      box-sizing: border-box;
    }
    .van-checkbox__icon {
      top: 50%;
      left: 10px;
      z-index: 1;
      position: absolute;
      margin-top: -10px;
    }
    .van-card__price {
      color: #f44;
    }
  }
}
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
.GerenG1 {
  // border-left: 3px solid #efefef;
  // border-right: 3px solid #efefef;
  // border-bottom: 3px solid #efefef;
  width: 100%;height: 40px;
  background-color: #ee0a24;
  line-height: 42px;
  text-indent: 45px;
  color:#fff;
}
.GerenG1>img{
  position: absolute;
  top: 4px;left: 4px;
}
// 以下可删
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

