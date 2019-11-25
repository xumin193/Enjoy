<template>
    <div class="enjoy-reg">
        <p class="reg">
            <router-link to="">
                <img src="../../../static/logo2.png" alt="">
            </router-link>
        </p>
        <p class="uname">
            <input type="text" placeholder="用户名" v-model="uname">
        </p>
        <p class="totp">
            <input type="password" placeholder="密码"  v-model="upwd">
        </p>
        <p class="ok">
            <input type="password" placeholder="确认密码"  v-model="cpwd">
        </p>
        <p class="email">
            <input type="text" placeholder="请输入邮箱"  v-model="email">
        </p>
        <p class="phone">
            <input type="text" placeholder="请输入手机号"  v-model="phone">
        </p>
        <div class="yzm">
            <!-- <yzhk></yzhk>  -->
        </div>
        <mt-button class="go" @click="reg">提交注册信息</mt-button>
    </div>
</template>
<script>
import yzhk from "./yzhk.vue"
export default {
    data() {
        return {
            uname:"", //用户名
            upwd:"",  //密码
            cpwd:"",  //确认密码
            email:"" , //邮箱
            phone:""   //手机
        }
    },
    components:{
    "yzhk":yzhk
    },
    // 添加函数reg，完成注册
    methods:{
        reg(){
            // 获取用户输入
            var uname = this.uname;
            var upwd = this.upwd;
            var cpwd = this.cpwd;
            var email = this.email;
            var phone = this.phone;
            // 1.创建正则表达式
            // 用户名密码的正则
            var ureg =/^[a-z0-9]{3,12}$/i;
            // 邮箱的正则
            var ereg =/^\w+@\w+\.\w+(\.cn)?$/
            // // 手机的正则
            var preg =/^1[3-9]\d{9}$/
            if(!ureg.test(uname)){
                this.$messagebox("消息","用户名格式不正确")
                return;
            }
            if(!ureg.test(upwd)){
                this.$messagebox("消息","密码格式不正确");
                return;
            }
            if(!ereg.test(email)){
                this.$messagebox("消息","邮箱格式不正确");
                return;
            }
            if(!preg.test(phone)){
                this.$messagebox("消息","手机格式不正确");
                return;
            }
            if(upwd!==cpwd){
                this.$messagebox("消息","两次密码输入不一致")
            }
            var url = "reg";
            var obj = `uname=${this.uname}&upwd=${this.upwd}&email=${this.email}&phone=${this.phone}`;
            // 发送ajax请求
            this.axios.post(url,obj)
             .then(res=>{
               console.log(res);
                if(res.data.code==1){
                    // 1.跳转  /product 商品列表
                this.$messagebox("消息","注册成功!请登录") 
                this.$router.push("/login")              
                }else if(res.data.code==-1){
                    this.$toast("用户名已存在")
                }else{
                    this.$toast("注册失败")
                }

            
            })
            .catch(err=>{
                console.log(err)
            })


        }
    }
}
</script>
<style scoped>
    .enjoy-reg{
        padding-top: 30px;
    }
    .enjoy-reg .reg{
        text-align: center;
        margin-bottom:100px;
        margin-bottom: 30px;
    }
    .enjoy-reg:after{
        content:"";
        display: block;
        clear: both;     
    }
    .enjoy-reg .reg img{
        height:50px;
    }
    .enjoy-reg .uname input,.enjoy-reg .totp input,.enjoy-reg .ok input,.enjoy-reg .email input,.enjoy-reg .phone input{
            width: 308px;
            font-size: 18px;
            color: #2c3038;
            border-radius: 2px;
            border: 2px solid #bdc0c5;
            padding: 8px;
     }
     .enjoy-reg input{
         margin-bottom: 20px;
     }
     .go{
         background: orangered;
         color: aliceblue;
         margin-top: 20px;
             }
</style>
