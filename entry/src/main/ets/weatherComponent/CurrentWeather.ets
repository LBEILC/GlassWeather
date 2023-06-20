import axios from '@ohos/axios'
import { CurrentWeatherModel } from '../model/WeatherModel';

@Component // 将当前代码块标记为组件
export struct CurrentWeather {
  @State temp: string = 'temp'
  @State text: string = 'text'

  aboutToAppear(){
    this.getCurrentWeather()
  }

  getCurrentWeather() {
    let weatherUrl = 'https://devapi.qweather.com/v7/weather/now?location=116,40&key=9243123252294a3e93ae6ccab5ec5da7';
    // 发起天气请求
    axios.get(weatherUrl)
      .then(res => {
        let data = JSON.stringify(res.data.now);
        let currentWeatherModel: CurrentWeatherModel = JSON.parse(data.toString());
        this.temp = currentWeatherModel.temp
        this.text = currentWeatherModel.text
      });
  }

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
      Text(`${this.temp}°`) // 显示当前温度
        .fontSize(80) // 设置字体大小
        .fontWeight(200) // 设置字体粗细
        .fontColor($r('app.color.baseFontColor')) // 设置字体颜色
      Text(this.text) // 显示当前天气描述
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