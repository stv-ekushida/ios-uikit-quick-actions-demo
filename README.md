# Qicik Action

## 概要
アプリアイコンを強く押し込んだ時に表示されるメニューから操作できるアクションのこと

## 関連クラス
UIApplicationShortcutIconType、UIApplicationShortcutItem、UIMutableApplicationShortcutItem

## 静的アクション

| Key | 意味 |
| ---|---|
| UIApplicationShortcutItemType (必須)	| アクション種別を表す文字列。 |
| UIApplicationShortcutItemTitle (必須)	| Home Screen 上に表示されるタイトル。多言語化は InfoPlist.strings で行う。|
| UIApplicationShortcutItemSubtitle	| Home Screen 上に表示されるサブタイトル。|
| UIApplicationShortcutItemIconType	| アイコンの種別。システムで用意されているアイコン画像がある。|
| UIApplicationShortcutItemIconFile	| 自分で用意したアイコン画像の名前。画像サイズは 35 x 35 ポイント。|
| UIApplicationShortcutItemUserInfo	| 起動時に渡されるデータを保持したディクショナリ。 |

## 動的アクション

```swift:Application.swift
        let shortcut = UIMutableApplicationShortcutItem(type: "SearchMusic",
                                                         localizedTitle: "Search",
                                                         localizedSubtitle: "Find a track to play",
                                                         icon: UIApplicationShortcutIcon(type: .search),
                                                         userInfo: nil
        )

        application.shortcutItems = [shortcut]
```

## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS9.0以上

## 開発環境
|category | Version| 
|---|---|
| Swift | 3.0.2 |
| XCode | 8.3 |
| iOS | 10.2〜 |

## 参考
https://developer.apple.com/reference/uikit/uimutableapplicationshortcutitem

https://developer.apple.com/reference/uikit/uiapplicationshortcutitem

https://developer.apple.com/reference/uikit/uiapplicationshortcuticontype
