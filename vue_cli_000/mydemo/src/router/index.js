import Vue from 'vue'
import Router from 'vue-router'
// 访问login.vue的地址
//http://localhost:8080/#/login  
// 访问header.vue的地址
//http://localhost:8080/#/index
//http://localhost:8080/#/FiftBox

// 父组件
import  index from "../components/index.vue"
// 为登录组件配置访问路径 /login
import login from "../components/enjoy/login.vue"
// 临时
import Header from "../components/enjoy/header.vue"
import FiftBox from "../components/enjoy/FiftBox.vue"
Vue.use(Router)

export default new Router({
  routes: [
    // { path: '/',  },
    // 登录路径
    {path:'/login',component:login},
    {path:'/FiftBox',component:FiftBox},
    {path:'/header',component:Header},
    // 父组件路径
    {path:'/index',component:index},
 
  ]
})
