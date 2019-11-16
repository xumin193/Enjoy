<template>
    <div class="enjoy-login">
        <p class="logo">
            <router-link to="">
                <img src="../../../static/logo2.png" alt="">
            </router-link>
        </p>
        <p class="phone">
            <input type="text" placeholder="用户名" v-model="uname">
        </p>
        <p class="totp">
            <input type="text" placeholder="密码"  v-model="upwd">
            <!-- <router-link to="" class="off">
                获取验证码
            </router-link> -->
        </p>
        <mt-button class="go" @click="login">登录</mt-button>
        <div class="tip">
            <p>未注册的用户点此注册</p>
            <p>
                 登录即表示您同意
                <router-link to="">用户协议</router-link>
            </p>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
           uname:"",//用户名
            upwd:""  //验证码
        }
    },
    methods:{
        login(){
            // 功能：完成用户登录操作
            // 1.创建正则表达式
            var reg=/^[a-z0-9]{3,12}$/i;
            // 获取用户输入  手机号/验证码
            var uname = this.uname;
            var upwd= this.upwd;
            // console.log(uname+"_"+upwd);
            // 验证手机号如果不匹配
            // 提示框
            if(!reg.test(uname)){
                this.$messagebox("消息","用户名格式不正确");
                return;
            }
            if(!reg.test(upwd)){
                this.$messagebox("消息","密码格式不正确");
                return;
            }
            var url = "login";
            var obj ={uname,upwd};
            // 发送ajax请求完成登录验证
            this.axios.get(url,{params:obj})
            .then(res=>{
                console.log(res.data.code);
                if(res.data.code==1){
                    // 1.跳转  /product 商品列表
                this.$messagebox("消息","登录成功!")               
                }else{
                    this.$toast("用户名和密码有误")
                }
            })
            .catch(err=>{
                console.log(err)
            })
            //  this.$messagebox("消息","注册成功!")
        }
    }
}
</script>
<style scoped>
    .enjoy-login .log{
        text-align: center;
        margin-bottom:100px;
    }
    .enjoy-login .logo img{
        height:50px;
    }
     .enjoy-login .phone input{
            width: 308px;
            font-size: 18px;
            color: #2c3038;
            border-radius: 2px;
            border: 2px solid #bdc0c5;
            padding: 15px;
     }
     .enjoy-login .totp input{
         width: 308px;
        font-size: 18px;
        color: #2c3038;
        border-radius: 2px;
        border: 2px solid #bdc0c5;
        margin-top:10px;
        padding: 15px;
     }
     .enjoy-login .totp a{
        margin-left: 30px;
        display: inline-block;
        width: 80px;
        border: 2px solid #1a1a1a;
        text-align: center;
        padding: 8px;
        vertical-align: 2px;
        color: #2c3038;
        text-decoration: none;

     }
    .enjoy-login .go{
        display: block;
        width: 308px;
        margin: 0 auto;
        background-color: #1a1a1a;
        font-family: PingFangSC-Medium;
        font-size: 16px;
        color: #e5e5e5;
        text-align: center;
        margin-top: 50px;
        margin-bottom: 10px;
        border-radius: 3px;
        text-decoration: none;
    }
    .enjoy-login .tip{
        margin-top: 118px;
        width: 100%;
        font-size: 12px;
        text-align: center;
        color: #92969c;
        margin-bottom: 55px;
    }
    .enjoy-login .tip a{
        color: #2c3038;
        text-decoration: underline;
    }
</style>
