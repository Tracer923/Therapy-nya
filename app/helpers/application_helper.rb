module ApplicationHelper
  def random_image_path
    images = ['nya1.jpg', 'nya2.jpg', 'nya3.jpg', 'nya4.jpg', 'nya5.jpg', 'nya6.jpg', 'nya7.jpg', 'nya8.jpg']  # 画像ファイル名のリスト
    image = images.sample  # ランダムに画像を選択
    image_path(image)  # 画像のパスを返す
  end
end