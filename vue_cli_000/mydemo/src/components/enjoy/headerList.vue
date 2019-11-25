<template>
    <div>
            <div class="main-app">
        <div class="header">
            <div class="header-top">
                <div class="left">
                    <router-link to="/" v-if="AA">首页</router-link>
                    <router-link to="/headerList" v-else>分类</router-link>
                </div>
                <div class="middle">
                    <img src="../../../static/logo.png" alt="">
                     <router-link to=""><span id="city" @click="change" >北京</span><img src="../../../static/daosan.png" alt=""></router-link>
                </div>
                <div class="right_login">
                    <router-link to="">登录</router-link>
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
                    <!-- <button >搜索</button> -->
                </div>
            </div>
        </div>
    </div>  
        <div  class="first_list" v-show="downiconB">
            <p>本地餐厅</p>
            <ul>
                <li><router-link to="">中国菜</router-link></li>
                <li><router-link to="">西餐</router-link></li>
                <li><router-link to="">日本料理</router-link></li>
                <li><router-link to="">咖啡甜点</router-link></li>
                <li><router-link to="">自助餐</router-link></li>
                <li><router-link to="">东南亚菜</router-link></li>
                <li><router-link to="">韩国料理</router-link></li>
                <li><router-link to="">火锅</router-link></li>
                <li><router-link to="">烧烤</router-link></li>
            </ul>
            <p>美容健身</p>
            <ul>
                <li><router-link to="">美容SPA</router-link></li>
                <li><router-link to="">美甲美睫</router-link></li>
                <li><router-link to=""></router-link></li>
            </ul>
            <p>活动课程</p>
            <ul>
                <li><router-link to="">同城活动</router-link></li>
                <li><router-link to="">趣味课程</router-link></li>
                <li><router-link to=""></router-link></li>
            </ul>
        </div>
    </div>
</template>
<script>
//import header from "./header.vue"
export default {
    data(){ 
        return{
            downicon:false,
            downiconA:false,
            downiconB:false,
            AA:false,
        }
    },
    created() {
        this.loadMore()
    },
    methods:{
        change(){
            this.downicon = !this.downicon;
        },
        changeA(){
            this.downiconA= !this.downiconA;
        },
        loadMore(){
            this.AA=true
            this.downiconB= !this.downiconB;
        }
    }
}

</script>

<style>
.main-app{
    position:fixed;
    width:100%;
    height:60px;

} 
.header{
    width:100%;
    height:54px;
    display:flex;
    position: relative;
    background-color:orangered!important;
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
    right:11%;
}
.right_login>.search{
    position:absolute;
    right:2%;
    top:13px;
}
.right_login>.search img{
    width:27px;
    height:27px;
}
.city_list{
    position:absolute;
    top:50px;
    width:100%;
    height:786px;
    background-color:yellowgreen !important;
    z-index: 10000

}
.city_list p{
    margin:50px 0;
    font-size:32px;
    color:#ddd;
    display:block;
    font-weight: bold;
}
.city_list a{
    display:inline-block;
    width:125px;
    height:30px;
    border:1px solid #fff;
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
/****************************************/
.first_list{
    height:736px;
    background-color:#f6f6f6; 
    padding-top:50px;
}
.first_list p{
    color:#1b1b20;
    text-align:left;
    padding:20px 0 15px 10px;
    font-size:18px;
}
.first_list>ul{
    display:flex;
    flex-wrap: wrap;
}
.first_list>ul>li{
    display:block;
    width:33%;
    height:55px;
    border:1px solid #ccc;
    background-color:#fff;
    border-left:0;
    
}
.first_list>ul>li:nth-child(4),
.first_list>ul>li:nth-child(5),
.first_list>ul>li:nth-child(6),
.first_list>ul>li:nth-child(7),
.first_list>ul>li:nth-child(8),
.first_list>ul>li:nth-child(9){
    border-top:0;
}
.first_list>ul>li>a{
    display:block;
    text-decoration: none;
    width:137px;
    height:55px;
    color:#1b1b20;
    font-size:16px;
    line-height: 50px;
    text-align:center;
}

</style>



