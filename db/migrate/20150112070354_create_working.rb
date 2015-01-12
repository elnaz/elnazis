class CreateWorking < ActiveRecord::Migration
  def change
    create_table :working do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.string :slug

      t.timestamps
    end
  end
end
