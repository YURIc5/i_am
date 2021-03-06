# 親type犬を作成
parent = Type.create(name: "犬")
# 犬の子供typeを作成
dogs = ['アーフェンピンシャー','アイリッシュウルフハウンド','アイリッシュセッター','アイリッシュテリア','アイリッシュレッドアンドホワイトセター','秋田犬','アナトリアンシェパード','アフガンハウンド','アメリカンアキタ(グレートジャパニーズドッグ)','アメリカンウォータースパニエル','アメリカンエスキモードッグ','アメリカンコッカースパニエル','アメリカンスタッフォードシャーテリア','アラスカンマラミュート','イタリアングレーハウンド','イビザンハウンド','イングリッシュコッカースパニエル','イングリッシュスプリンガースパニエル','イングリッシュセッター','イングリッシュポインター','イングリッシュマスティフ','ウィペット','ウエストハイランドホワイトテリア','ウェルシュコーギーカーディガン','ウェルシュコーギーペンブローク（コーギー）','ウェルシュシープドッグ','ウェルシュテリア','ウェルシュスプリンガースパニエル','エアデールテリア','エストレラマウンテンドッグ','オーストラリアンキャトルドッグ','オーストラリアンシェパード','オーストラリアンシルキーテリア','オーストラリアンテリア','オールドイングリッシュシープドッグ','カーリーコーテッドレトリーバー','甲斐犬','カレリアンベアドッグ','キースボンド','紀州犬','キャバチワ','キャバプー','キャバリアキングチャールズスパニエル','キングチャールズスパニエル','クーバース','クランバースパニエル','グレイハウンド','グレートデン','グレートピレニーズ','クロアチアンシープドッグ','クロムフォルレンダー','ケアンテリア','ケリーブルーテリア','コーイケルホンディエ','コーギー','ゴードンセッター','ゴールデンレトリバー','コッカークス','コッカプー','コトン・ド・テュレアール','コモンドール','雑種（ミックス犬）','サーロスウルフドッグ','サモエド','サルーキ','シーズー','シープー','シーポメ','シーリハムテリア','シェットランドシープドッグ','シェパード','柴犬','シベリアンハスキー','シャーペイ','ジャーマンシェパード','ジャーマンショートヘアードポインター','ジャーマンスパニエル','ジャーマンハンティングテリア','ジャーマンピンシャー','ジャーマンワイアーヘアードポインター','ジャイアントシュナウザー','ジャックラッセルテリア','シュナウザー','シュナプー','シュナマル','スカイテリア','スキッパーキ','スコティッシュテリア','スタッフォードシャーブルテリア','スタンダードプードル','スパニッシュマスティフ','セントバーナード','ソフトコーテッド・ウィートン・テリア','ダップー','ダルメシアン','チベタンスパニエル','チベタンテリア','チベタンマスティフ','チャイニーズクレステッドドッグ','チャウチャウ','チワックス','チワパグ','チワピン','チワズー','チワピン','チワプー','チワブル','チワマル','チワワ','狆','ティーカッププードル','トイプードル','トイマンチェスターテリア','ドーベルマン','ドゴアルヘンティーノ','土佐犬・四国犬','土佐闘犬','ナポリタンマスティフ','日本スピッツ','日本テリア','ニューファンドランド','ノーフォークテリア','ノーリッチテリア','パーソンラッセルテリア','バーニーズマウンテンドッグ','パグ','パグズー','バセットハウン','バセンジー','ハバニーズ','パピキー','パピチワ','パピヨン','ハリア','ビーグル','ビアデッドコリー','ビションフリーゼ','ピットブル','ピンプー','プーリー','ファラオハウンド','プチバセットグリフォンバンデーン','プチブラバンソン','フラットコーテッドレトリバー','ブラッドハウンド','ブリタニースパニエル','ブリュッセルグリフォン','ブルドック','ブルマスティフ','フレンチブルドッグ','ペキックス','ペキチー','ペキニーズ','ペキプー','ベドリントンテリア','ベルジアングリフォン','ベルジアングローネンダール','ベルジアンタービュレン','ベルジアンマリノア','ボーダーコリー','ボーダーテリア','ポーチュギーズウォータードッグ','ボクサー','ボストンテリア','北海道犬','ポメキー','ポメ柴','ポメチワ','ポメックス','ポメパグ','ポメプー','ポメヨン','ポメラニアン','ポメ柴','ポリッシュローランドシープドッグ','ボルゾイ','ボロニーズ','ホワイトシェパード','ポンスキー','マスティフ','豆柴','マルーキー','マルシーズ','マルチーズ','マルックス','マルパピ','マルプー','ミニチュアシュナウザー','ミニチュアダックスフンド','ミニチュアピンシャー','ミニチュアブルテリア','ヨークシャーテリア','ヨーチー','ラサアプソ','ラフコリー','ラブラドールレトリバー','レークランドテリア','レオンベルガー','ロットワイラー','ワイマラナー','ワイヤーフォックステリア']
dogs.each do |dog|
  parent.children.create(
    name: dog,
  )
end
# 親type猫を作成
parent = Type.create(name: "猫")
# 猫の子供typeを作成
cats = ['アビシニアン','アメリカンカール','アメリカンショートヘア','アメリカンボブテイル','アメリカンワイヤーヘア','エキゾチックショートヘア','エジプシャンマウ','オシキャット','オリエンタル','カラーポイントショートヘアー','キムリック','キンカロー','コーニッシュレックス','コラット','雑種（ミックス猫）','サイベリアン','サバンナキャット','サファリ','ジャパニーズボブテイル','シャム猫','シャルトリュー','シンガプーラ','スコティッシュフォールド','スコマンチ','スノーシュー','スフィンクス','セルカークレックス','セレンゲティ','ソマリ','ターキッシュアンゴラ','ターキッシュバン','チャウシー','チンチラ','デボンレックス','トイガー','ドラゴンリー','トンキニーズ','ドンスコイ','ネべロング','ノルウェージャンフォレストキャット','バーマン','バーミーズ','ハバナブラウン','バリニーズ','バンビーノ','ピーターボールド','ピクシーボブ','ヒマラヤン','ブランブル','ブリティッシュショートヘアー','ペルシャ猫','ベンガル猫','ボンベイ','マンクス','マンダレイ','マンチカン','ミヌエット（ナポレオン）','メインクーン','ヨーロピアンバーミーズ','ラガマフィン','ラグドール','ラパーマ','ラムキン','ロシアンブルー']
cats.each do |cat|
  parent.children.create(
    name: cat,
  )
end