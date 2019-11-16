<template>
    <div class="main-app">
        <div class="header">
            <div class="header-top">
                <div class="left">
                    <a href="">分类</a>
                </div>
                <div class="middle">
                    <img src="../../../static/logo.png" alt="">
                     <router-link to=""><span id="city" @click="change">北京</span><img src="../../../static/daosan.png" alt=""></router-link>
                </div>
                <div class="right_login">
                    <router-link to="">登录</router-link>
                    <router-link to="" class="search"><img src="../../../static/search.png" alt=""></router-link>
                </div>
                <div class="city_list" style="display:none" v-show="downicon" @click="change">
                    <p>本地服务开通城市</p>
                    <router-link to="">上海</router-link>
                    <router-link to="">北京</router-link>
                    <router-link to="">南京</router-link>
                    <router-link to="">天津</router-link>
                    <router-link to="">广州</router-link>
                    <router-link to="">成都</router-link>
                    <router-link to="">杭州</router-link>
                    <router-link to="">深圳</router-link>
                    <router-link to="">苏州</router-link>
                    <router-link to="">西安</router-link>
                    <router-link to="">重庆</router-link>
                    <router-link to="">长沙</router-link>
                </div>
            </div>
        </div>
    </div>   
</template>

<script>
export default {
    data(){
        return{
            downicon:false,
        }
    },
    methods:{
        change(){
            this.downicon = !this.downicon;
        }
    }
}
</script>
<style scoped>
/* .main-app{
     font-size: 16px; 

} */
.header{
    height:54px;
    display:flex;
    background-color:#000;
    position: relative;
    color:#fff;
}
.left a{
    text-decoration: none;
    color:#fff;
    position:absolute;
    top:15px;
    left:10px;
    margin-right:20px;
    font-size: 16px
}
.middle{
    position:absolute;
    left:125px;
    top:12px;
    display:flex;
}
.middle>img{
    width:73px;
    height:33px;
}
.middle>a{
    text-decoration: none;
    margin-left:10px;
}
.middle>a img{
    width:12px;
    height:12px;
    margin:9px 0 0 5px;
    
}
.middle>a>span{
    color:#fff;
    font-size:13px;
}
.right_login a{
    text-decoration: none;
    font-size:16px;
    color:#fff;
    position:absolute;
    top:15px;
    right:70px;
}
.right_login>.search{
    position:absolute;
    right:15px;
    top:13px;
}
.right_login>.search img{
    width:27px;
    height:27px;
}
.city_list{
    position:absolute;
    top:70px;
}
.city_list p{
    font-size:32px;
    color:#000;
    display:block;
    font-weight: bold;
}
.city_list a{
    display:inline-block;
    width:125px;
    height:30px;
    border:1px solid #ccc;
    text-decoration: none;
    color:#000;
    margin-top:5px;
    text-align:center;
}
/*****************************/
</style>

