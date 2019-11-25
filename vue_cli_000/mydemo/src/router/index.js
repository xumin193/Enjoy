import Vue from 'vue'
import Router from 'vue-router'
// 访问login.vue的地址
//http://localhost:8080/#/login  
//http://localhost:8080/#/header 
// 访问header.vue的地址
//http://localhost:8080/#/index
//http://localhost:8080/#/FiftBox
//http://localhost:8080/#/register
//http://localhost:8080/#/Geren
//http://localhost:8080/#/productList
//http://localhost:8080/#/yzhk
//http://localhost:8080/#/DetailP
//http://localhost:8080/#/headerList
//http://localhost:8080/#/Space
//http://localhost:8080/#/
//http://localhost:8080/#/GerenG
//http://localhost:8080/#/GerenR
//http://localhost:8080/#/GerenS
// 父组件
import  index from "../components/index.vue"
// 为登录组件配置访问路径 /login
import login from "../components/enjoy/login.vue"
// 临时
import Header from "../components/enjoy/header.vue"
import FiftBox from "../components/enjoy/FiftBox.vue"
import register from "../components/enjoy/register.vue"
import Geren from  "../components/enjoy/Geren.vue"
import productList from  "../components/enjoy/productList.vue"
import yzhk from  "../components/enjoy/yzhk.vue"
import DetailP from  "../components/enjoy/DetailP.vue"
import headerList from  "../components/enjoy/headerList.vue"
import Space from  "../components/enjoy/Space.vue"
// 为登录组件配置访问路径 /login
import GerenR from "../components/enjoy/GerenR.vue"
import GerenG from "../components/enjoy/GerenG.vue"
import GerenS from "../components/enjoy/GerenS.vue"
Vue.use(Router)

export default new Router({
  routes: [
    // { path: '/',  },
    // 登录路径
    {path:'/productList',component:productList},
    {path:'/register',component:register},
    {path:'/login',component:login},
    {path:'/FiftBox',component:FiftBox},
    {path:'/header',component:Header},
    {path:'/Geren',component:Geren},
    {path:'/yzhk',component:yzhk},
    {path:'/DetailP/:pid',component:DetailP,props:true},
    {path:'/productList',component:productList},
    {path:'/headerList',component:headerList},
    {path:'/Space',component:Space},
    /********************************/
		{path:'/GerenR',component:GerenR},
    {path:'/GerenG',component:GerenG},
    {path:'/GerenS',component:GerenS},
    // 父组件路径
    {path:'/',component:index},
 
  ]
})
