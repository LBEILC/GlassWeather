import { AirQuality } from '../weatherComponent/AirQuality'
import { CurrentWeather } from '../weatherComponent/CurrentWeather'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  scroller: Scroller = new Scroller(); // 滚动器
  build() {
    Column() {
      CurrentWeather()
      Scroll(this.scroller) {
        AirQuality()
      }
      .padding({
        left: 20,
        right: 20,
        bottom: 300
      })
      .scrollable(ScrollDirection.Vertical) // 滚动方向纵向
      .scrollBar(BarState.Off) // 滚动条常驻显示
      .edgeEffect(EdgeEffect.Spring) // 滚动到边沿后回弹

      Text('卡片组件')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Start)
    .backgroundImage($r('app.media.img_1'), ImageRepeat.NoRepeat)
    .backgroundImageSize(ImageSize.Cover)
  }
}