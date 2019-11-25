<template>
    <div class="main-app">
        <div class="header">
            <div class="header-top">
                <div class="left">
                    <router-link to="../index" style="display:none" @click.native="changeB">首页</router-link>
                    <router-link to="/headerList">分类</router-link>
                </div>
                <div class="middle">
                    <img src="../../../static/logo.png" alt="">
                     <router-link to=""><span id="city" @click="change">北京</span><img src="../../../static/daosan.png" alt=""></router-link>
                </div>
                <div class="right_login">
                    <router-link to="/login">登录</router-link>
                    <router-link to="" class="search"><img  @click="changeA"  src="../../../static/search.png" alt=""></router-link>
                </div>
                <div class="city_list" style="display:none" v-show="downicon">
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
                <div class="search_btn" style="display:none;" v-show="downiconA" >
                    <input placeholder="请输入您想搜索的宝贝" id="in"/>
                    <button >搜索</button>
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
            downiconA:false,
        }
    },
    methods:{
        change(){
            this.downicon = !this.downicon;
        },
        changeA(){
            this.downiconA= !this.downiconA;
        },
        changeB(){
            this.downiconB= !this.downiconB;
        }
    }
}
</script>
<style scoped>
 .main-app{
    position:fixed;
    width:100%;
    height:60px;
    z-index: 1000;

} 
.header{
    width:100%;
    height:54px;
    display:flex;
    position: relative;
    background-color:orangered;
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
    top:54px;
    width:100%;
    height:786px;
    background-color:yellowgreen !important;
    z-index: 10000
}
.city_list p{
    font-size:32px;
    color:#ddd;
    display:block;
    font-weight: bold;
}
.city_list a{
    display:inline-block;
    width:125px;
    height:30px;
    border:1px solid #ccc;
    text-decoration: none;
    color:#fff;
    margin-top:5px;
    text-align:center;
}
/*****************************/
.search_btn{
    position:absolute;
    top:55px;
    display:flex;
    width:380px;
    height:45px;
    
}
.search_btn #in{
    font-size: 14px;
    padding: 10px 15px;
    margin:5px 15px 0 54px;
    /* background-color:; */
    width: 270px;
    border: 1px solid orangered;
    outline:none;
    /* border:0; */
    border-radius: 3px;

    /* background-color:greenyellow !important;
    color:#fff;
    display:block;
    width:400px;
    border-radius: 5px; */
    /* border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px; */
}
.search_btn button{
    background:#fff;
    font-size:18px;
    width:55px;
    height:48px;
    border:none;
    outline: none;
    padding-left:10px;
}
</style>

