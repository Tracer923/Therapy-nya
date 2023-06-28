document.addEventListener("DOMContentLoaded", function() {
  var deleteButton = document.getElementById("deleteButton");
  deleteButton.addEventListener("click", function() {
    if (confirm("本当に消しますか？")) {
      // 削除処理を実行するためのリクエストを送信するなどの操作を記述
      // 例えば、Ajaxを使用して非同期で削除リクエストを送信し、成功後にページをリダイレクトするなど
    }
  });
});

