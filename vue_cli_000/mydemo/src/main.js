// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
//#引入和配置mint-ui组件库
//1:完整引入mint-ui组件库
import MintUI from "mint-ui";
//2:单独引入mint-ui样式文件
import "mint-ui/lib/style.css"
// //5.引入第三方 axios
import axios from "axios"
// //6.配置访问服务器基础路径
axios.defaults.baseURL="http://127.0.0.1:3000/"
//7.保存session信息
//每次访问服务器将session id
//发送服务器验证使用
axios.defaults.withCredentials=true;
//8.将axious注册Vue实例中 注意顺序
  //不能配置在vue对象后面
Vue.prototype.axios = axios;
//3:将mint-ui对象注册vue实例中
Vue.use(MintUI)
// Vue.config.productionTip = false

//单独引入mint-ui样式文件
import "mint-ui/lib/style.css"
//4.引入姿态替图片样式文件
// import "./font/iconfont.css"

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
