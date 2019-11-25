<template>
    <div class="product_app" >
        <h2>每周精选餐饮</h2>
        <p>8月21日更新</p>
        <div class="goods">
            <div class="goods-item" v-for="(item,i) of list" :key="i" >
                <img :src="'http://127.0.0.1:3000/'+item.ppublic" alt="" style="width:335px;height:223px;">
                <h4>{{item.title}}</h4>
                <h5>{{item.ftitle}}</h5>
                
            </div>
        </div>
        
    </div>
</template>

<script>
export default {
    created(){
        //1.1：调用加载商品列表函数
        this.loadMore()
    },
    data(){
        return{
            pno:0,
            list:[],
        }
    },
    methods:{
          loadMore(){  //功能：获取服务器商品列表
            //1:创建变量url保存请求路径
            var url="Product"
            //2：自增页码；
            this.pno++;
            //3：创建参数对象
            var obj={pno:this.pno};
            //4：发送ajax请求
            this.axios.get(url,{params:obj})
            .then(res=>{   //成功回调
                //保存服务器返回数据
                //将赋值改成拼接
                //this.list = res.data.rows;
                this.list=this.list.concat(res.data.rows)
            })
            .catch(err=>{   //失败回调
               console.log(err)
            })
            //5：获取服务器返回结果并且保存list中
        }
    }
}
</script>
<style scoped>
    /* 1：最外层父元素 弹性布局 */
.product_app{
    padding:4px;
}
.goods{
    padding-bottom: 58px;
}

/* 2：修饰商品样式 */
.goods-item{
    margin:15px 0;/*外边距*/
    padding:2px;/*内边距*/
}
.product_app h2{
    text-align: left;
    margin: 58px 18px 0px;
}
.product_app p{
    color:crimson;
    text-align: left;
    margin:0px 36px 0px ;
}
</style>



