class AddDetailsToComments < ActiveRecord::Migration
  def self.up
    add_column :comments, :comment_type, :string
    add_column :comments, :permalink, :string
    add_column :comments, :user_ip, :string
    add_column :comments, :user_agent, :string
    add_column :comments, :referrer, :string
  end

  def self.down
    remove_column :comments, :referrer
    remove_column :comments, :user_agent
    remove_column :comments, :user_ip
    remove_column :comments, :permalink
    remove_column :comments, :comment_type
  end
end
