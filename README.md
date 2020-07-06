# LunarCore

生成1890 - 2100 年的农历数据

源代码为 @cyanzhong 写的 Objective-C 版本的 [LunarCore](https://github.com/cyanzhong/LunarCore)， 由@Elors改写为 Swift 版本 [LunarCore-Swift](https://github.com/Elors/LunarCore-Swift)

我在这两个的基础上将 LunarCore 写为了支持 Swift Package Manager 的版本，使用起来应该更加方便简单

## 安装

#### Swift Package Manager

通过 URL https://github.com/L1cardo/LunarCore 安装

## 使用

```swift
import LunarCore
```

##### LunarCore.calendar

计算一个日历面板(42 天)的所有信息

```swift
/// 计算一个日历面板(42 天)的所有信息
/// - Parameters:
///   - year: 公历年
///   - month: 月（1-12)
/// - Returns: 一个日历面板(42 天)的所有信息 [String: Any]

LunarCore.calendar(_ year: Int, _ month: Int) -> [String: Any]
```

返回的数据格式如下所示:

```swift
[
    "firstDay": 3,
    "monthDays": 31,
    "monthData": [
        [
            "lunarDayName": "初八", 
            "solarFestival": "", 
            "month": 6, 
            "lunarMonthName": "五月", 
            "worktime": 0,
            "GanZhiYear": "庚子", 
            "lunarDay": 8, 
            "zodiac": "鼠", 
            "year": 2020, 
            "lunarFestival": "",
            "day": 28,
        ],
        ......
]
```

##### LunarCore.solarToLunar

公历转换成农历

```swift
/// 公历转换成农历
/// - Parameters:
///   - _year: 公历年
///   - _month: 公历月
///   - _day: 公历日
/// - Returns: 农历年月日
LunarCore.solarToLunar(_ _year: Int, _ _month: Int, _ _day: Int) -> [String: Any]
```

返回的数据格式如下所示:

```swift
[
    "worktime": 0, 
    "weekFestival": "", 
    "term": "小暑", 
    "lunarDayName": "十六", 
    "GanZhiYear": "庚子", 
    "lunarFestival": "", 
    "lunarMonthName": "五月", 
    "solarFestival": "", 
    "zodiac": "鼠", 
    "lunarDay": 16
]
```

##### LunarCore.lunarToSolar

将农历转换为公历

```swift
/// 将农历转换为公历
/// - Parameters:
///   - year: 农历年
///   - month: 月(1-13，有闰月)
///   - day: 日
/// - Returns: 公历数据
LunarCore.lunarToSolar(_ _year: Int, _ _month: Int, _ _day: Int) -> [String: Any]
```

返回的数据格式如下:

```swift
[
    "year": 2020,
    "month": 6, 
    "day": 7
]
```

##### LunarCore.isLeapYear

判断公历年是否是闰年

```swift
/// 判断公历年是否是闰年
/// - Parameter year: 公历年
/// - Returns: 是否是闰年
LunarCore.isLeapYear(_ year: Int) -> Bool
```
