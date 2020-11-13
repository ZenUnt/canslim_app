class CreateKabukas < ActiveRecord::Migration[5.1]
  def change
    create_table :kabukas, id: false, primary_key: :日付 do |t|
      t.date :日付
      t.float :始値
      t.float :高値
      t.float :安値
      t.float :終値
      t.integer :出来高
      t.integer :終値調整値

      t.timestamps
    end
  end
end
