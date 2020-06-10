class CreateFaphras < ActiveRecord::Migration[6.0]
  def change
    create_table :faphras do |t|
      t.text :body

      t.timestamps
    end
  end
end
