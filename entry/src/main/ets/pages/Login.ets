// import font from '@ohos.font';

@Entry
@Component
struct Login {

  // aboutToAppear() {
  //   font.registerFont({
  //     familyName: 'manrope',
  //     familySrc: '/font/manrope.ttf' // font文件与pages目录同级
  //   })
  // }

  build() {
    Flex({direction: FlexDirection.Column, justifyContent: FlexAlign.SpaceBetween}) {
      Column({space: 32}) {
        Column({space:8}) {
          Text("Welcome Back!")
            .fontSize(20)
            .fontWeight(600)
            .lineHeight(28)
            .fontColor($r('app.color.neutral_900'))
            // .fontFamily('manrope')
          Text("Sign In to your account")
            .fontSize(16)
            .lineHeight(24)
            // .fontFamily('Manrope')
            .fontColor($r('app.color.neutral_500'))
        }
        .width('100%')
        .alignItems(HorizontalAlign.Start)

        Column({space:16}) {
          TextInput({ placeholder: 'Email' })
            .placeholderColor($r('app.color.neutral_500'))
            .placeholderFont({size: 14, family: 'Manrope'})
            .height(52)
            .fontSize(14)
            // .fontFamily("Manrope")
            .border({radius: 8, width: 1, color: $r('app.color.neutral_400'), style: BorderStyle.Solid})

          Column({space:8}) {
            TextInput({ placeholder: 'Password' })
              .type(InputType.Password)
              .placeholderColor($r('app.color.neutral_500'))
              .placeholderFont({size: 14, family: 'Manrope'})
              .height(52)
              .fontSize(14)
              // .fontFamily("Manrope")
              .border({radius: 8, width: 1, color: $r('app.color.neutral_400'), style: BorderStyle.Solid})
            Text("Forgot password?")
              .fontSize(12)
              .lineHeight(18)
              // .fontFamily("Manrope")
              .fontColor($r('app.color.alert_error'))
              .width('100%')
              .textAlign(TextAlign.End)
          }
        }

        Column() {
          Button('Sign In', { type: ButtonType.Normal, stateEffect: true })
            .fontSize(14)
            .fontWeight(600)
            // .fontFamily("Manrope")
            .borderRadius(8)
            .backgroundColor($r('app.color.primary_400'))
            .width("100%")
            .height(46)
        }

        Flex({alignItems: ItemAlign.Center}) {
          Divider().width('30%')
          Text("Or Sign In").width('40%').textAlign(TextAlign.Center).fontColor($r('app.color.neutral_400')).fontSize(16)
          Divider().width('30%')
        }

        Column({space:16}){
          Button('Google', { type: ButtonType.Normal, stateEffect: true })
            .fontSize(14)
            // .fontFamily("Manrope")
            .fontColor($r('app.color.neutral_600'))
            .border({radius: 8, width: 1, color: $r('app.color.neutral_300'), style: BorderStyle.Solid})
            .borderRadius(8)
            .backgroundColor($r('app.color.bg'))
            .width("100%")
            .height(46)

          Button('Facebook', { type: ButtonType.Normal, stateEffect: true })
            .fontSize(14)
            // .fontFamily("Manrope")
            .fontColor($r('app.color.neutral_600'))
            .border({radius: 8, width: 1, color: $r('app.color.neutral_300'), style: BorderStyle.Solid})
            .borderRadius(8)
            .width("100%")
            .height(46)
            .backgroundColor($r('app.color.bg'))
        }

      }
      .alignItems(HorizontalAlign.Start)
      .padding(24)
      Row() {
        Text("Don't have account? ")
          .fontSize(16)
          .lineHeight(24)
          // .fontFamily('Manrope')
          .fontColor($r('app.color.neutral_500'))
        Text("Sign Up")
          .fontSize(16)
          .lineHeight(24)
          .fontColor($r('app.color.neutral_900'))
          // .fontFamily('Manrope')
      }.width('100%').justifyContent(FlexAlign.Center).padding({bottom: 56})
    }.padding({top: 24})
  }
}