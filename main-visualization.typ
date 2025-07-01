#import "@preview/typewind:0.1.0": *
#import "parts.typ": main_color, header_line, iop_color

#set text(lang: "ja", font: ("Noto Sans CJK JP", "Noto Sans JP"))
#set text(size: 9pt)
#set par(leading: 0.5em, spacing: 1.0em)
#show link: it => underline(text(fill: blue)[#it])

#set page(
  paper: "a4",
  fill: gradient.linear(sky-100, amber-100, angle: 45deg),
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
  データを価値に変える第一歩
  ]]

  #heading(depth:3)[#text(size:12pt, tracking: 3pt)[
  ～データ可視化編～
  ]]

  #v(2mm)
  
  #text(size:14pt, fill:stone-600)[SAWACHIのリアルな圃場データを自らの手で分析・可視化する]
]

#line(length: 100%)

#block(fill: sky-600, inset: 3mm, radius: 1mm)[
#text(size: 8pt, fill: gray-100)[
== 講座概要

高知県の次世代施設園芸システム「SAWACHI」に集まるリアルな圃場環境データを、あなたの手で価値ある情報に変えてみませんか？本講座では、SAWACHIプラットフォームの豊富なデータを活用し、専門的な分析ツールを使ったデータ可視化・分析スキルをハンズオン形式で実践的に学びます。農業の今と未来を、データで読み解く第一歩を踏み出しましょう！
]]

#v(5mm)

#grid(columns:(2fr, 1fr),
align: left+horizon,
[
#set text(size: 12pt)
#let e(t) = text(fill: gradient.linear(amber-400, orange-400, angle: 45deg),
weight: "black", size: 18pt)[#t]
== 開催概要

/ 日時: #e[2025年8月6日（水）] 13:30～16:15
/ 日時: #e[2025年9月6日（土）] 13:30～16:15
#h(11mm) #text(size: 9pt, fill: red)[※両日とも同じ内容です]
#v(2mm)
/ 会場: #e[オンライン開催] (Zoom)

== 内容

+ *イントロダクション:* SAWACHIの概要
+ *講義:* データ活用の世界 (APIとデータモデル)
+ *ハンズオン:* 詳細分析画面（ModelMethod）の実践
+ *デモ:* Pythonによるデータ活用
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
#tag_box[SAWACHI API]
],[
#tag_box[Model Method]
],[
#tag_box[データ可視化]
],[
#tag_box[Python]
],[
#tag_box[農業DX]
]
)

#grid(columns:(1fr, 1.1fr, 1fr),
align: left+horizon,
[
#image(
  "./images/illust_ttl14.png",
  width: 50mm,
  )
],[
#set text(size: 12pt, fill: sky-600, weight: "bold")

== 対象

*IoP/IoT分野に興味のある方*
*農業データの活用に関心のある方*
*エンジニア、学生、研究者など*

],[
#set text(fill: gray-800, weight: "bold")
#box(
stroke: 1mm + gradient.linear(orange-200, sky-300, angle: 45deg),
inset: 3mm,
radius: 1mm,
height: 40mm
)[
- SAWACHI APIの基本を理解できる
- 圃場データを自在に可視化できる
- データ活用の実践的なヒントを得られる
]
]
)
#grid(columns:(1fr, 1fr, 1fr),
column-gutter: 5mm,
align: left+horizon,
[
== 必要なもの

- インターネットに接続可能なPC

*参加費無料*

],[
== 申し込み方法

下記のリンクもしくは右のQRコードからConnpassでお申し込みください

#text(size: 8pt, fill: blue)[
(後日Connpassリンクを掲載)
]

#v(5mm)

/ 主催: 高知県農業イノベーション推進課\
/ 事務局: 株式会社 Prompt-X


],[

#align(center)[#image(
  "./images/qr_code_placeholder.png",
  width: 40mm,
)]

])
