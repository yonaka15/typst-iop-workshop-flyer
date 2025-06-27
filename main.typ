#import "@preview/typewind:0.1.0": *
#import "@preview/gantty:0.2.0": gantt
#import "@preview/cineca:0.5.0": *
#import "@preview/cetz:0.3.4": canvas, draw, tree
#import "parts.typ": main_color, header_line, iop_color

#set text(lang: "ja", font: ("Noto Sans CJK JP", "Noto Sans JP"))
#set text(size: 9pt)
#set par(leading: 0.5em, spacing: 1.0em)
//#set heading(numbering: "1.")
#show link: it => underline(text(fill: blue)[#it])

#set page(
  paper: "a4",
  fill: gradient.linear(lime-100, amber-100, angle: 45deg),
  flipped: false,
  margin: (x: 15mm, top: 20mm, bottom: 10mm),
  footer: [
    #set text(size: 8pt)
    #align(center)[
    *主催* 高知県農業イノベーション推進課#h(5mm)*事務局* 株式会社 Prompt-X
    ]
  ],
  background: [
    #place(
      top+left,
      dx: 10mm,
      dy: 5mm,
      image("./images/sawachi-logo.png", height: 8mm)
    )
  ],
)

#align(center)[
  #heading(depth:1)[#text(size:9pt)[令和7年度 IoP技術者コミュニティ - SAWACHIエンジニア養成講座]]

  #heading(depth:2)[#text(size:27pt)[
  SAWACHI活用の基礎技術
  ]]

  #heading(depth:3)[#text(size:12pt, tracking: 3pt)[
  ～IoTデバイス編～
  ]]

  #v(2mm)
  
  #text(size:14pt, fill:stone-600)[ESP32マイコンとIoPデバイスAPIでデータ収集]
]

#line(length: 100%)

#block(fill: lime-600, inset: 3mm, radius: 1mm)[
#text(size: 8pt, fill: gray-100)[
== 講座概要

ESP32マイコンと温湿度センサSHT31から温湿度データを収集し*AWS IoT CoreをベースにしたIoP独自のプロトコル*でSAWACHIクラウドにデータをアップロードする基礎的なプログラミング講座です。

IoTデバイスの設計からデプロイ、そしてクラウドへのデータ送信まで一通りの開発を体験できます。
]]

#v(5mm)

#grid(columns:(2fr, 1fr),
align: left+horizon,
[
#set text(size: 12pt)
#let e(t) = text(fill: gradient.linear(amber-400, orange-400, angle: 45deg),
weight: "black", size: 18pt)[#t]
== 開催概要


/ 日時: #e[2025年6月27日（金）]13:00～17:00
#v(2mm)
/ 会場: #e[Prompt-X高知オフィス]\
#h(10mm) 〒780-0870 高知市本町4-2-44 グラン高知県庁前 4F-A

== 内容

+ LED点灯（基礎確認）
+ 温湿度取得（I2C通信）
+ Wi-Fi接続（無線通信）
+ MQTT通信（プロトコル）
+ SAWACHI連携（クラウド連携）
],[
#image(
  "./images/illust_ttl11.png",
  width: 50mm,
  )
]
)

#v(3mm)

#let tag_box(t) = box(
  stroke: 2pt + gradient.linear(orange-200, sky-300, angle: 45deg),
  radius: 2mm,
  width: 32mm,
  height: 20mm
)[
#text(size:12pt, fill: stone-600, weight: "black")[#t]
]

#grid(columns:5,
column-gutter: 3mm,
align: center+horizon,
[
#tag_box[ESP32]
],[
#tag_box[SHT31]
],[
#tag_box[Network]
],[
#tag_box[MQTT]
],[
#tag_box[
IoP\
デバイス\
API
]
]
)


#v(5mm)

#grid(columns:(1fr, 1.1fr, 1fr),
align: left+horizon,
[
#image(
  "./images/illust_ttl14.png",
  width: 50mm,
  )
],[
#set text(size: 12pt, fill: lime-600, weight: "bold")

== 対象

*IoP技術者コミュニティ会員*

実デバイスを用いますので\
対面での開催となります。

],[
#set text(fill: gray-800, weight: "bold")
#box(
stroke: 1mm + gradient.linear(orange-200, sky-300, angle: 45deg),
inset: 3mm,
radius: 1mm,
height: 50mm
)[
- IoTデバイスに興味を持つ方
- AWS IoT Core の基礎を学びたい方
- 農業分野でのデジタル化に興味がある方
]
]
)
#grid(columns:(1fr, 1fr, 1fr),
column-gutter: 5mm,
align: left+horizon,
[
== 必要な持ち物

- *ノートパソコン* (Windows)
- ESP32ボード、SHT31センサ、ブレッドボード等一式

*当日会場にて現金販売* \
販売価格*3,300円* (領収書発行します）\
#list(marker: "※")[過去に参加して既にお持ちの方は\ 購入不要\
(フォームにてご回答ください)]


],[
== 申し込み方法

下記のリンクもしくは右のQRコードから入力フォームでお申し込みください

#text(size: 8pt, fill: blue)[
https://forms.office.com/r/Z1mby6fXYn
]

#v(5mm)


/ 主催: 高知県農業イノベーション推進課（088-821-4570）\
/ 事務局: 株式会社 Prompt-X


],[

#align(center)[#image(
  "./images/qr.png",
  width: 40mm,
)]

])
