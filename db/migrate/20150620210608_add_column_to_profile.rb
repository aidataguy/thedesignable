class AddColumnToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :name, :string
    add_column :profiles, :twitter, :string
    add_column  :profiles, :about, :text
    add_column :profiles, :country, :string
  end
end
