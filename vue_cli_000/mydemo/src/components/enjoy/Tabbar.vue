<template>
  <div >
    <van-tabbar v-model="active" style=" border-top: 1px solid #e0e0e0;" active-color="orangered">
      <van-tabbar-item v-for="(item,index) of tabbars" :key="index" :to="item.name">
        <span>{{item.title}}</span>
        <img slot="icon" slot-scope="props" :src="props.active ? item.active : item.inactive">
      </van-tabbar-item>
    </van-tabbar>
  </div>
</template>
<script >
export default {
  data() {
    return {
      active:0,
      tabbars: [
        {
          name: "GerenS",
          title: "热门商品",
          active: "/static/gerenS2.png",
          inactive: "/static/gerenS1.png"
        },
        {
          name: "GerenG",
          title: "购物车",
          active: "/static/gerenG2.png",
          inactive: "/static/gerenG1.png"
        },
        {
          name: "GerenR",
          title: "个人中心",
          active: "/static/gerenR2.png",
          inactive: "/static/gerenR1.png"
        }
      ]
    };
  },
  methods: {},
    created() {
    console.log(this.$route.fullPath)
    if (this.$route.fullPath == "/GerenS") {
      this.active = 0;
     
    } else if (this.$route.fullPath == "/GerenG") {
      this.active = 1;
      
    } else if (this.$route.fullPath == "/GerenR") {
      this.active = 2;
     
    }
  },
};
</script>
<style scoped>

</style>

