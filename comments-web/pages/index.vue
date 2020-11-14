<template>
  <div class="container">
    <el-radio v-model="radio" label="1">备选项</el-radio>
    <el-radio v-model="radio" label="2">备选项</el-radio>
    <div>{{ aaa }}</div>
  </div>
</template>

<script>
import axios from "axios";
export default {
  data() {
    return {
      radio: "1",
      aaa: "",
    };
  },
  async asyncData({ params }) {
    console.log(params);
    let res = await axios.get(`http://www.baidu.com`);
    return { aaa: res.data };
  },
};
</script>
