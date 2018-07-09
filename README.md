# youtube_for_ruby
YoutubeAPIを用いて動画検索し、結果を表示させる

## API
YouTube Data API V3 - https://developers.google.com/youtube/v3/?hl=ja


## Gem 
google-api-ruby-client 0.9  
trollop 2.1  
dotenv 

## Reference
- [公式ドキュメント](https://developers.google.com/youtube/v3/code_samples/ruby?hl=ja)

## Sample 
```
$ ruby youtube.rb
"あの「HIKAKIN様」にフォローされたので感謝の声真似実況してみたらマジでごめんなさいwwww【スプラトゥーン2】" by まことの実況
"#HIKAKIN  ステキすぎ  涙が😭  寄付100万‼️" by なお なお
"なりきり ヒカキンvsプリキュア 蜂を操る偽HIKAKIN登場！【#952】" by れのれらTV / RenoRera TV
"❉HIKAKIN、『好きなYouTuberランキング』1位に感謝「さらに良さを知ってほしい」" by Dego costa
"【拡散希望】ヒカキンと一緒に西日本豪雨の被災地に募金しませんか？" by HikakinTV
"HIKAKINが問題発言!?" by 詐欺師猿
"HIKAKINさんの動画に告知してみた" by ゆみりんチャンネル
"ヒカキン死すHIKAKIN死す" by ナルトかさぶた
"Nekuro vs Loneliness HIKAKIN (unfinished)" by 音MAD inv.
"ヒカキンさん描いてみた♪【色鉛筆お絵描き】HIKAKINさんの似顔絵♪" by Thu Kim
```
## `youtube.rb`の中身
- 表示させるのは10件
- キーワードは`HIKAKIN`
- 表示結果は
  - 期間(１ヶ月前から現在まで..など)
  - 関連性
  - チャンネルタイトル、チャンネル名、アップロード日、再生回数..などが可能

## Memo
google-api-ruby-clientのversionが0.9じゃないと?エラーが起きる?
