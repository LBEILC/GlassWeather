# 基于OpenHarmony开发的玻璃拟态的天气系统(1)项目介绍及项目的初始搭建

## 项目介绍

### 项目描述

本项目使用了API9作为开发版本,该版本是一个较新的版本,在这个项目中我会展示该项目的主要功能构成,主要是展示玻璃拟态的具体开发代码和开发思路,本项目偏向前端开发,后端使用的是和风天气的免费天气API.

### 开源地址

整个项目也会同步开源到Gitee和GItHub仓库中

项目的搭建过程也会在[基于 OpenHarmony 开发的玻璃拟态的天气应用](https://xie.infoq.cn/article/7c8797111e5268a45c839da59)同步更新

Gitee:[GlassWerther (gitee.com)](https://gitee.com/lu-bei-lu-chen/glass-werther)

GItHub:[GlassWeather (github.com)](https://github.com/LBEILC/GlassWeather)

### 项目展示

![image-20230618205552942](http://8.130.77.171/blogImg/2023/06/image-20230618205552942.png)

### 项目设计思路

本项目的设计风格主要学习了IOS自带的天气软件,IOS自带天气的风格就是这种玻璃拟态的风格,个人认为这种风格还是非常好看的,所以本项目大部分代码都是为了实现与其相近的效果

### 项目主要组件

#### 当前天气组件NowTemp

该组件显示的内容有以下几部分:当前城市,当前天气,天气描述,今日最高温和最低温

#### 今日空气质量组件AirQuality

该组件展示了今日的空气质量,主要以展示AQI的方式来展示空气质量

#### 卡片组件

该组件包含了数个卡片,卡片中的信息是今日天气指数的一些相关信息,如钓鱼指数等,目的是直观的展示今日天气适合做什么.

