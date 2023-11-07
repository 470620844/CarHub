@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    RelativeContainer() {
      Navigator({target:'pages/Login',type:NavigationType.Push}) {
        Text('Skip')
          .id('text_skip')
          .fontSize(12)
          .fontColor($r('app.color.neutral_900'))
      }
      .width(24)
      .height(16)
      .margin({ top: 61, right: 28 })
      .alignRules({
        right: { anchor: '__container__', align: HorizontalAlign.End }
      })
      .id('nav_login')
      Image($r('app.media.splash_logo'))
        .id('image_logo')
        .alignRules({
          middle: { anchor: '__container__', align: HorizontalAlign.Center },
          center: { anchor: '__container__', align: VerticalAlign.Center },
        })
        .objectFit(ImageFit.Contain)
        .width(122)
        .height(104)


    }
    .height('100%')
    .width('100%')
  }
}