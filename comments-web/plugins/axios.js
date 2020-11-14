import axios from "axios";

let options ={}

// //需要全路径才能工作

if (process.server) {
  console.log('服务端')
} else{
  console.log('客户端')
}

export default axios.create(options)
