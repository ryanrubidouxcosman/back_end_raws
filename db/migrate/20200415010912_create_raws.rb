class CreateRaws < ActiveRecord::Migration[6.0]
  def change
    create_table :raws do |t|
      t.string :name
      t.string :code
      t.float :density

      t.timestamps
    end
  end
end
