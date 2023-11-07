@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  private swiperController: SwiperController = new SwiperController()

  build() {
    //层叠布局
    Stack({alignContent :Alignment.TopEnd}) {//顶部右侧对齐

      //轮播
      Swiper(this.swiperController) {

        Row() {
          Image($r('app.media.splash_logo'))
            .objectFit(ImageFit.Contain)
            .width('120')
            .height(104)
        }.alignItems(VerticalAlign.Center)//每行内容水平居中
        .justifyContent(FlexAlign.Center)//所有内容垂直居中对齐

        Column() {
          Text("Get All Your Dream\nVehicle in One Place")
            .fontColor($r('app.color.neutral_900'))
            .fontSize(28)
            .margin({bottom :60})


          Image($r('app.media.splash_1'))
            .objectFit(ImageFit.Contain)
            .width(341)
            .height(213)

        }
        .width('100%')
        .height('100%')
        .alignItems(HorizontalAlign.Center)
        .justifyContent(FlexAlign.Center)

        Column() {
          Text("Get All Your Dream\nVehicle in One Place")
            .fontColor($r('app.color.neutral_900'))
            .fontSize(28)
            .margin({ bottom: 60 })


          Image($r('app.media.splash_1'))
            .objectFit(ImageFit.Contain)
            .width(341)
            .height(213)

        }
        .width('100%')
        .height('100%')
        .alignItems(HorizontalAlign.Center)
        .justifyContent(FlexAlign.Center)



      }
      .height('100%')
      .width('100%')
      .loop(false)//自动轮播
      .vertical(false)//是否垂直滚动
      .displayCount(1)//每页显示条目数
      .indicatorStyle({//轮播图指示器
        size: 15,//小点尺寸
        color: '#54FF5A30',//未选中颜色
        selectedColor: '#ff5a30',//选中颜色
        bottom: 58//距离底部距离
      }).onChange((event)=>{//翻页完成时回调当前页下标
        console.error('tag',event)
      })

      Navigator({ target: 'pages/Login', type: NavigationType.Replace }) {//Replace:跳转并销毁当前页
        Text('Skip')
          .fontSize(12)
          .fontColor($r('app.color.neutral_900'))
      }
      .width(24)
      .height(16)
      .margin({ top: 61, right: 28 })

    }.height('100%')
    .width('100%')

  }
}