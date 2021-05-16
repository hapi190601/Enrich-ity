# Enrich-ity (えんりっちてぃー)
※ポートフォリオ作品
<br>
<br>

## サイト概要

人生を豊かにするための「仲間」探しサイト
<br>
<br>

### サイトテーマ

「成長」と「趣味」の観点から「仲間」を見つけ、人生をもっと豊かにしよう！
<br>
<br>

### テーマを選んだ理由

#### １：私が「人の成長を支援したい」というビジョンを持っているため

AIに仕事が奪われると危惧されるこの世界で、生き残っていくためには人として「成長」するしかありません。
<br>
しかし、自分の意志のみでなにかを継続し、成長しつづけることのできる人は滅多にいません。
<br>
では、どうすれば成長しつづけることができるのでしょうか。その答えは同じ志を持つ仲間の有無ではないかと私は考えています。
<br>
労働経済学では「ピア効果」と言われている、この共に切磋琢磨できる仲間の存在は、成長の大きな外部的要因になります。
<br>
この成長のための「仲間探し」を、私のプログラミングスキルでサポートしたいと思い、このテーマを選ぶに至りました。
<br>
<br>

#### ２：社会人のコミュニティ形成は難易度が高いと感じるため

学生時代は自ら探さずとも「クラス」や「部活」、「サークル」などの**コミュニティー**に所属していました。
<br>
しかし、社会人はどうでしょう。転勤や上京などで主要コミュニティが「仕事仲間」のみという人も少なくないと思います。
<br>
私は営業職時代、異動が多く、コミュニティは「仕事仲間」のみでした。そして、その時の同僚が皆パチンコ好きで、私もパチンコにのめり込んでしまった経験があります。
<br>
もしあの時、自分の趣味に通ずるコミュニティに所属していれば...と思う時しばしばあります。(パチンコが悪いわけではないですが)
<br>
このサイトを通して自分の趣味に通ずる仲間を見つけ、私のような後悔をする人が少しでも減ればと思い、このWebアプリを作りました。
<br>
<br>

### 使い方

**仲間と出会う方法は大きく２つ**
<br>
１：自分と同じような思いを抱いているユーザーを**検索**する
<br>
２：自らが探している仲間を明記して**新規投稿**し、同志を待つ


これらの方法で気になる相手を見つけたら、チャットにてコミュニケーションを取ります。
<br>
ここで、お互いに**希望のすり合わせ**を行うことが重要です。

条件が合えばその日からあなたの大切な「仲間」です！

後は実際に会うもよしオンラインでやりとりするもよし。
<br>
Enrich-ityでの出会いを充実した人生のプラスにしてほしいと思います！

より詳しい使い方は、HowToページを見て欲しいです。
<br>
<br>

### ターゲットユーザ

・大学生〜社会人
<br>
・性別不問
<br>
・成長を望む人
<br>
・同志を探している人
<br>
<br>

### 主な利用シーン

・成長したい時
<br>
・「仲間」を見つけたいとき
<br>
・新しい挑戦をする動機を強めたいとき
<br>
<br>

## 設計書

![ER図](https://user-images.githubusercontent.com/65483033/116206141-77ef8780-a779-11eb-9425-73b2eb3d0ee7.png)
<br>
<br>
![AWS構成図](https://user-images.githubusercontent.com/65483033/118254555-2fa8c700-b4e6-11eb-82f0-6862ce2f09fd.png)
<br>
<br>
[テーブル定義書](https://docs.google.com/spreadsheets/d/1YgOBLgpdU9jex5Q32fSng10eN3muoxe-w-8gzkpTG7c/edit#gid=1247326819)
<br>
<br>
[アプリケーション詳細設計書](https://docs.google.com/spreadsheets/d/1GfmoIgWYWwRi0FsoZoKnm0xGThhiSfdfCTNaqozyDP4/edit#gid=1224226657)
<br>
<br>
[AWSインフラ設計書](https://docs.google.com/spreadsheets/d/1IHKD7vsht5Z17kucgRij2zv9GGeylAUiZX0q9JfbjEU/edit#gid=400780309)
<br>
<br>
## チャレンジ要素一覧
<br>
[実装機能一覧](https://docs.google.com/spreadsheets/d/1R0m2ik__0ZudC0S6QdJczHlEcfyxd7Cc7yBdT_-YnA8/edit#gid=0)
<br>
<br>

## 開発環境

- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JS ライブラリ：jQuery
- IDE：Cloud9

<br>

## 使用素材

・[ぱくたそ](https://www.pakutaso.com/)
<br>
・[StockSnap](https://stocksnap.io/)
<br>
・[pixabay](https://pixabay.com/ja/)
<br>
・[FreeVectors](https://www.freepik.com/)
<br>
<br> 

## 実装のアピールポイント・苦労したところ

#### １：インクリメンタルサーチ機能
#### ２：ActionCableと通知機能の連動
#### ３：スマホサイズへのレスポンシブ対応