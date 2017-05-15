# sketch-template

## 便利にしてくれること
### ファイル自動生成
- ファイルを監視し、保存タイミングでExport(slice)設定された画像を自動で書き出します
- svgoで自動的にsvgを圧縮します

### JSON自動生成
- SketchToolで生成したJSONと、.sketchをJSON化を同時に生成（これにより、Gitでデザインデータを管理できるようになり、エンジニアとのコミュニケーションが円滑となるはずです）

## インストール
### SketchTool
```
$ cd /Applications/Sketch.app/Contents/Resources/sketchtool/

$ ./install.sh
```

※Sketch.appのインストールが必要

### jq
```
$ brew install jq
```

### npm package
```
npm i
```

## 使い方
`npm start`をしたら、`.sketch`ファイルで編集するだけ。

## フォルダ構成
- dist // 書き出されたファイル
- json // 生成されるjsonファイル格納場所
- sh // シェルスクリプト格納場所
- sketch // .sketchファイル
- pakage.json // 設定やscripts変更時編集
- svgo_config.yaml // svgo設定変更時編集

## カスタマイズ
### `pakage.json`
以下`fileName`はお好みで変更してください。
ファイル名と同じにしておく必要があります。

```json
  "config": {
    "fileName": "template"
  },
```

### `svgo_config.yaml`
お好みで設定してください。

[（公式）svgo](https://github.com/svg/svgo)

## Symbols
coming soon.
