export class CurrentWeatherModel {
  obsTime?: string // 数据观测时间
  temp?: string // 温度，默认单位：摄氏度
  feelsLike?: string // 体感温度，默认单位：摄氏度
  icon?: string // 天气状况和图标的代码，图标可通过天气状况和图标下载
  text?: string // 天气状况的文字描述，包括阴晴雨雪等天气状态的描述
  wind360?: string // 风向360角度
  windDir?: string // 风向
  windScale?: string // 风力等级
  temperature?: string // 温度
  direct?: string // 风向
  windSpeed?: string // 风速，公里/小时
  humidity?: string // 相对湿度，百分比数值
  precip?: string // 当前小时累计降水量，默认单位：毫米
  pressure?: string //大气压强，默认单位：百帕
  vis?: string // 能见度，默认单位：公里
  cloud?: string // 	云量，百分比数值。可能为空
  dew?: string // 露点温度。可能为空
}