module ApplicationHelper
  def random_image_path
    images = ['nya1.jpg', 'nya2.jpg', 'nya3.jpg']  # 画像ファイル名のリスト
    image = images.sample  # ランダムに画像を選択
    image_path(image)  # 画像のパスを返す
  end
end