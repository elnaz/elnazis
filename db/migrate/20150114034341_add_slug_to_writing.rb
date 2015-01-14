class AddSlugToWriting < ActiveRecord::Migration
  def change
    add_column :writing, :slug, :string
  end
end
