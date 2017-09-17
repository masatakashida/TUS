class CreateTestreplyposts < ActiveRecord::Migration[5.1]
  def change
    create_table :testreplyposts do |t|
      t.text :text
      t.string :testpost_id

      t.timestamps
    end
  end
end
