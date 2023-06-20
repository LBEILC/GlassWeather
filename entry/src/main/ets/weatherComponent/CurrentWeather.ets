@Component // 将当前代码块标记为组件
export struct CurrentWeather {
  build() {
    Column() { // 创建一个列布局
      Text('城市名') // 显示城市名
        .fontSize(30) // 设置字体大小
        .margin({ // 设置边距
          top: 60,
          bottom: 0
        })
        .fontColor($r('app.color.baseFontColor')) // 设置字体颜色
        .fontWeight(400) // 设置字体粗细
      Text('经纬度') // 显示经纬度
        .fontSize(12) // 设置字体大小
        .margin({ // 设置边距
          top: 10
        })
        .fontColor($r('app.color.baseFontColor')) // 设置字体颜色
        .fontWeight(200) // 设置字体粗细
      Text('当前温度') // 显示当前温度
        .fontSize(80) // 设置字体大小
        .fontWeight(200) // 设置字体粗细
        .fontColor($r('app.color.baseFontColor')) // 设置字体颜色
      Text('当前天气描述') // 显示当前天气描述
        .fontSize(18) // 设置字体大小
        .fontWeight(500) // 设置字体粗细
        .margin({ // 设置边距
          bottom: 10
        })
        .fontColor($r('app.color.baseFontColor')) // 设置字体颜色
      Text('最高温 最低温') // 显示最高温和最低温
        .fontSize(18) // 设置字体大小
        .fontWeight(500) // 设置字体粗细
        .margin({ // 设置边距
          bottom: 10
        })
        .fontColor($r('app.color.baseFontColor')) // 设置字体颜色
    }
  }
}