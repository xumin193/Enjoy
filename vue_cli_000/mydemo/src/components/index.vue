<template>
    <div>
        <!-- 头部 -->
        <Header></Header>
        <!-- 2.面板 -->
        <mt-tab-container>
            <mt-tab-container-item>

            </mt-tab-container-item>
        </mt-tab-container>
        <!-- 3底部导航 -->
        <mt-tabbar fixed v-model="active">
            <mt-tab-item id="message" @click.native="changeState(0)">
                <tabbaricon 
                :focused="current[0].Select"
                :normalImage="require('../../static/zhuye_normal.png')" 
                :selectedImage="require('../../static/zhuye_select.png')"  
                ></tabbaricon>主页   
            </mt-tab-item>  
            <mt-tab-item id="contact"  @click.native="changeState(1)">
                <tabbaricon 
                :focused="current[1].Select" 
                :normalImage="require('../../static/faxian_normal.png')" 
                :selectedImage="require('../../static/faxian_select.png')"
                ></tabbaricon>发现  
            </mt-tab-item>  
            <mt-tab-item id="find" @click.native="changeState(2)">
                <tabbaricon 
                :focused="current[2].Select"
                :normalImage="require('../../static/liwu_normal.png')" 
                :selectedImage="require('../../static/liwu_select.png')"
                ></tabbaricon>礼物   
            </mt-tab-item>  
            <mt-tab-item id="me" @click.native="changeState(3)">
                <tabbaricon 
                :focused="current[3].Select"
                :normalImage="require('../../static/wode_normal.png')" 
                :selectedImage="require('../../static/wode_select.png')"
                ></tabbaricon>我的  
            </mt-tab-item>      
        </mt-tabbar>
    </div>
</template>
<script>
// 引入头部导航栏
import header from "./enjoy/header.vue"
import TabBarIcon from "./enjoy/TabBarIcon.vue"
export default {
    data(){
        return{
          active:"message",//选中面板的id
            current:[
                {Select:true},
                {Select:false},
                {Select:false},
                {Select:false}
          ]   
        }
    },

//2注册子组件
components:{
    "Header":header, //头部
    "tabbaricon":TabBarIcon  //底部导航
   },
methods: {
        changeState(index){
      //功能：用户点击切换按tabbar选中图片
      //对应数组值修改true其它修改false
        for(var i=0;i<this.current.length;i++){
        this.current[i].Select=index==i?true:false;
       }
       
      }

 },
}
</script>
<style scoped>
  /* 1.最外父元素溢出隐藏 */
   /* 2.tabbar  默认文字颜色  覆盖组件样式 */
   .mint-tabbar > .mint-tab-item{
       color:#999;
   }
   /* 3.tabbae 选中后文字颜色 覆盖组件样式 */
    .mint-tabbar > .mint-tab-item.is-selected{
        background:transparent;
        color: #45c018;
    }
</style>

