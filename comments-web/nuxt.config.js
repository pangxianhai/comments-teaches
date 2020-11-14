export default {
  head: {
    title: '西南财经大学学生评教系统',
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: '' }
    ],
    link: [
      { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }
    ]
  },
  css: [
    'element-ui/lib/theme-chalk/index.css'
  ],

  plugins: [
    '@/plugins/element-ui',
  ],

  components: true,

  buildModules: [
  ],

  modules: [
  ],

  build: {
    transpile: [/^element-ui/],
  }
}
