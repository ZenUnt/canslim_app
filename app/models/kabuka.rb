class Kabuka < ApplicationRecord

  def self.import(file)
    CSV.foreach(file.path, encoding: 'Shift_JIS:UTF-8', headers: true) do |row|
      # 日付が見つかればレコードを呼び出し、なければ新規作成
      kabuka = find_by(日付: row["日付"]) || new
      # CSVからデータを取得し設定
      kabuka.attributes = row.to_hash.slice(*updatable_attributes)
      kabuka.save
    end
  end

  # 更新を許可するカラムを定義
  def self.updatable_attributes
    ["日付", "始値", "高値", "安値", "終値","出来高", "終値調整値"]
  end
end
