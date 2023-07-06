module ApplicationHelper
  def random_image_path
    images = ['nya1.jpg', 'nya2.jpg', 'nya3.jpg', 'nya4.jpg', 'nya5.jpg', 'nya6.jpg', 'nya7.jpg', 'nya8.jpg', 'nya9.jpg', 'nya10.jpg', 'nya11.jpg']  # 画像ファイル名のリスト
    image = images.sample  # ランダムに画像を選択
    image_path(image)  # 画像のパスを返す
  end

  def random_message
    messages = [
    "猫は元来ミステリアスである。<br/>彼らの脳裏には、<br>我々の認識を超えた数多のものが去来している。<br/><br/>Sir Walter Scott（ウォルター・スコット）",
    "もし道に迷ったら、一番良い方法は猫について行くことだ。<br/>猫は道に迷わない。<br/><br/>Charles Monroe Schulz（チャールズ・M・シュルツ）",
    "もし動物が喋れたら、犬はぶっきらぼうで、<br>遠慮なくものを言う正直な奴だ。<br><br>ところが猫は、余計なことを喋り過ぎないという<br>希有な才能を見せることだろう。<br><br>Carl Van Vechten（カール・ヴァン・ヴェクテン）",
    "ネコは絶対的な正直さを持っている。<br><br>Ernest Hemingway（ヘミングウェイ）",
    "例えば猫の場合だが、彼らは黙して語らない。<br>その代わり深く考え、さまざまに思いを巡らせる。<br><br>Andrew Lang（アンドリュー・ラング）",
    "ネコのようにミステリアスに書けたらと思う。<br><br>Edgar Allan Poe（エドガー・アラン・ポー）",
    "猫に関する究極の謎は、そもそも何故「家猫」になることを決意したかである。<br><br>Sir Compton Mackenzie（コンプトン・マッケンジー）",
    "孤立することが悪いなんてちっとも思わない。<br>僕にとっては最高の気分さ。<br><br>Andy Warhol（アンディ・ウォーホル）",
    "犬や猫を大事にしない者は信用できない。<br><br>Abraham Lincoln（エイブラハム・リンカーン）",
    "美学的に完璧なものが世の中に二つある。<br>時計と猫だ。<br><br>Emile-Auguste Chartier<br>（エミール＝オーギュスト・シャルティエ）",
    "猫は、どんなに小さくても最高傑作である。<br><br>Leonardo da Vinci（レオナルド・ダ・ヴィンチ）",
    "この世でどう猫に接したかで、天国でのステイタスが決まる。<br><br>Robert A. Heinlein（ロバート・A・ハインライン）",
    "猫は一度頭に入れた事を忘れるようなことは絶対にない。<br>人間のようにくだらない事に頭を煩わせないからだ。<br><br>Paul Corley（ポール・コーレイ）",
    ] # ランダムなメッセージのリスト
    messages.sample # ランダムにメッセージを選択して返す
  end
end