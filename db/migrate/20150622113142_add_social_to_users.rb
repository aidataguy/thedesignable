class AddSocialToUsers < ActiveRecord::Migration
  def change
    add_column :users, :twitter, :string
    add_column :users, :googleplus, :string
    add_column :users, :youtube, :string
    add_column :users, :instagram, :string
    add_column :users, :dribble, :string
    add_column :users, :git, :string
  end
end
