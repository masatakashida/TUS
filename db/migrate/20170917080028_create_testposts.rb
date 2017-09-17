class CreateTestposts < ActiveRecord::Migration[5.1]
  def change
    create_table :testposts do |t|
      t.text :text

      t.timestamps
    end
  end
end
