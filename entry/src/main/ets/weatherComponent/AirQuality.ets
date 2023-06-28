import axios from '@ohos/axios'
import { AirQualityData } from '../model/WeatherModel'

@Component
export struct AirQuality {
  @State aqi: string = 'aqi'
  @State category: string = 'category'
  @State airQualityData: AirQualityData = new AirQualityData()

  aboutToAppear() {
    this.GetAirQuality()
  }

  GetAirQuality() {
    // 构建天气URL
    let weatherUrl = 'https://devapi.qweather.com/v7/air/now?location=116,40&key=9243123252294a3e93ae6ccab5ec5da7'
    // 发送GET请求获取天气数据
    axios.get(weatherUrl)
      .then(res => {
        // 将返回的天气数据转换为字符串
        let data = JSON.stringify(res.data.now);

        // 将字符串转换为JSON对象并赋值给airWeather变量
        this.airQualityData = JSON.parse(data.toString());

        this.aqi = this.airQualityData.aqi
        this.category = this.airQualityData.category
      });
  }

  build() {
    Column() {
      Text('空气质量').fontColor($r('app.color.weatherCardTitle')).fontSize(11)
        .margin({
          bottom: 10
        })

      Column() {
      }
      .border({ width: { left: 0, right: 0, top: 0, bottom: 0.4 }, color: $r('app.color.weatherCardTitle'), })
      .width('100%')

      Text(this.aqi + ' - ' + this.category)
        .fontColor($r('app.color.baseFontColor'))
        .fontSize(20)
        .fontWeight(700)
        .margin({
          top: 10,
        })
      Text('当前AQI(CN)为' + this.aqi)
        .fontColor($r('app.color.baseFontColor')).fontSize(16).fontWeight(300)
        .margin({
          top: 10,
          bottom: 5
        })
    }
    .border({ width: 0.4, color: $r('app.color.weatherCardTitle'), })
    .backgroundColor($r('app.color.weatherCardBack'))
    .alignItems(HorizontalAlign.Start)
    .width('100%')
    .padding(15)
    .borderRadius(10)
    .margin({ top: 20 })
    .shadow({
      radius: 20,
      color: $r('app.color.weatherCardShadow')
    })

    .backdropBlur(70)
    .animation({
      duration: 120,
      curve: Curve.EaseInOut,
    })
  }
}