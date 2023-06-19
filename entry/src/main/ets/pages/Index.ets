@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Text('当前天气')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
      Text('今日空气质量')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
      Text('卡片组件')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
    }
    .width('100%')
    .justifyContent(FlexAlign.Start)
  }
}