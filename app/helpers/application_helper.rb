module ApplicationHelper
  def random_image_path
    images = ['nya1.jpg', 'nya2.jpg', 'nya3.jpg', 'nya4.jpg', 'nya5.jpg', 'nya6.jpg', 'nya7.jpg', 'nya8.jpg']  # 画像ファイル名のリスト
    image = images.sample  # ランダムに画像を選択
    image_path(image)  # 画像のパスを返す
  end
  
  def random_message
    messages = [
    "猫は元来ミステリアスである。<br/>彼らの脳裏には、我々の認識を超えた数多のものが去来している。<br/><br/>Sir Walter Scott（ウォルター・スコット）",
    "もし道に迷ったら、一番良い方法は猫について行くことだ。<br/>猫は道に迷わない。<br/><br/>Charles Monroe Schulz（チャールズ・M・シュルツ）",
    "メッセージ3"] # ランダムなメッセージのリスト
    messages.sample # ランダムにメッセージを選択して返す
  end
end