<h1 align="center">
  <a href="http://www.reflectcode.com">
    ReflectCode
  </a>
</h1>
<p align="center">
  <strong>Automated Source Code Transformation service</strong><br>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Platform-Android%20%7C%20iOS-green" alt="Platform - Android | iOS" />
 
  <a href="https://twitter.com/intent/follow?screen_name=reflectcode">
    <img src="https://img.shields.io/twitter/follow/reflectcode.svg?label=Follow%20@reflectcode" alt="Follow @reflectcode" />
  </a>
  
</p>


-----
# ReflectCode Project demo (Calculator App)
Calculator App is one of the initial programs developed.
**ReflectCode** is publishing its first  automatically ported calculator iOS app.
This repository contains the Android source code which was used as input and generated iOS source code project.

## Files transformed
This sample project demonstrates porting of following files - 
* .png in mipmap folders
* .xml layout files
* .java code
* colors.xml
* strings.xml

## Statement Estimation
| File | Statement |
|---------|------------|
| Layout xml | 423 |
| Java | 446 |
| colors.xml | 30 |
| strings.xml | 19 |
| AppIcon | 50 | 0 |
| XCode Project | 385 |
| **Total** | **1335** |


## Dev Notes

### Details of classes ported -
| Class | Members |
|-------|---------|
| AppCompatActivity | onCreate(), OnClickListenerm(), findViewById() |
| Button | setOnClickListener(), getText() |
| TextView | getText(), setText() |
| String | toString(), equals() | 
| Integer | toString() |
| Log | Log.e() |
| String | toString(), equals() | 
| Integer | toString() |
| Java language | if, elseif, swiftch case |

### Details of layout controls ported -
| Control | Attributes |
|---------|------------|
| LinearLayout | layout_width, layout_height, layout_weight, gravity, orientation, padding|
| TextView | layout_width, layout_height, text, id, hint, gravity, textSize, background, textColor | 
| Button | layout_width, layout_height, layout_weight, id, text, textSize | 

-----

## Screen recording

<img src="/Visuals/Calc-Screen-Rec.gif" alt="Anim-ScreenRec-Android"/>

-----

## Screen shots

Screen shot of Android and iOS devices - 
<img src="/Visuals/Calc-Screenshot-Portrait.png" alt="Screenshot"/>
<img src="/Visuals/Calc-Screenshot-Landscape.png" alt="Screenshot"/>

-----

## License

This project is made available under the MIT license. See the LICENSE file for more details.
