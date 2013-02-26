class CreateHomePages < ActiveRecord::Migration
  def self.up
    add_column :pages, :home_column_1_title, :string
    add_column :pages, :home_column_2_title, :string
    add_column :pages, :home_column_3_title, :string
    add_column :pages, :home_column_1, :text
    add_column :pages, :home_column_2, :text
    add_column :pages, :home_column_3, :text
  end

  def self.down
    drop_table :home_pages
  end
end
