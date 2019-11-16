<template>
    <div>
        <img :src="focused?selectedImage:normalImage" alt="" class="imgstyle">
    </div>
</template>
<script>
export default {
    props:{
        focused:false,//默认状态
        selectedImage:{default:""}, //选中图片
        normalImage:{default:""}//默认图片
    }
}
</script>
<style scoped>
   .imgstyle{
       width:30px;
       height:30px;
   }
</style>
