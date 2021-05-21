class AddProfileinfoToUser < ActiveRecord::Migration[6.1]
  def change

    add_column :users, :self_introduction, :text
    add_column :users, :twitter_account, :string
    add_column :users, :github_account, :string

  end
end
