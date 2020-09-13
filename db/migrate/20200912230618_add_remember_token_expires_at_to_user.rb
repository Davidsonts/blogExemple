class AddRememberTokenExpiresAtToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :remember_token_expires_at, :string
  end
end
