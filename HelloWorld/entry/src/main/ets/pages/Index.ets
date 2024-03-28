import router from '@ohos.router'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World DevEco'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(60)
          .fontWeight(FontWeight.Bold)
        //添加按钮
        Button() {
          Text("下一个")
            .fontSize(30)
            .fontWeight(FontWeight.Bold)
        }
        .type(ButtonType.Capsule)
        .backgroundColor('#0D9FFB')
        .margin({
          top: 20
        })
        .width('40%')
        .height('5%')
        .onClick(() => {
          //跳转第二页
          router.pushUrl({ url: 'pages/SecondPage' }).then(() => {
            console.info('Succeeded in jumping to the second page.')
          }).catch((err) => {
            console.error(`Failed to jump to the second page.Code is ${err.code}, message is ${err.message}`)
          })
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}