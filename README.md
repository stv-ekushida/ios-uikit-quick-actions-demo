# HomeScreen Qicik Action

## 概要
アプリアイコンを強く押し込んだ時に表示されるメニューから操作できるアクションのことです。

<img width="241" alt="2017-04-28 8 24 15" src="https://cloud.githubusercontent.com/assets/9479568/25508306/1bafc208-2bec-11e7-8cc0-3c931774cbc3.png">

## 関連クラス
UIApplicationShortcutIconType、UIApplicationShortcutItem、UIMutableApplicationShortcutItem

## 静的アクション

| Key | 意味 |
| ---|---|
| UIApplicationShortcutItemType (必須)	| アクション種別を表す文字列。 |
| UIApplicationShortcutItemTitle (必須)	| Home Screen 上に表示されるタイトル。<br>多言語化は InfoPlist.strings で行う。|
| UIApplicationShortcutItemSubtitle	| Home Screen 上に表示されるサブタイトル。|
| UIApplicationShortcutItemIconType	| アイコンの種別。システムで用意されているアイコン画像がある。|
| UIApplicationShortcutItemIconFile	| 自分で用意したアイコン画像の名前。画像サイズは 35 x 35 ポイント。|
| UIApplicationShortcutItemUserInfo	| 起動時に渡されるデータを保持したディクショナリ。 |


```
	<key>UIApplicationShortcutItems</key>
	<array>
		<dict>
			<key>UIApplicationShortcutItemIconType</key>
			<string>UIApplicationShortcutIconTypePlay</string>
			<key>UIApplicationShortcutItemTitle</key>
			<string>Play</string>
			<key>UIApplicationShortcutItemSubtitle</key>
			<string>Start playback</string>
			<key>UIApplicationShortcutItemType</key>
			<string>PlayMusic</string>
		</dict>
	</array>
```

## 動的アクション

AppDelegate.swift

```swift:Application.swift
        let shortcut = UIMutableApplicationShortcutItem(type: "SearchMusic",
                                                         localizedTitle: "Search",
                                                         localizedSubtitle: "Find a track to play",
                                                         icon: UIApplicationShortcutIcon(type: .search),
                                                         userInfo: nil
        )

        application.shortcutItems = [shortcut]
```

## Quick Actionで呼ばれるメソッド

AppDelegate.swift

```swift:Application.swift
    func application(_ application: UIApplication,
                     performActionFor shortcutItem: UIApplicationShortcutItem,
                     completionHandler: @escaping (Bool) -> Void) {
        
        switch (shortcutItem.type) {
        case "PlayMusic" :
            showAlert(message: shortcutItem.localizedTitle)
        case "SearchMusic":
            showAlert(message: shortcutItem.localizedTitle)
        default:
            break
        }
        completionHandler(true)
    }
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
