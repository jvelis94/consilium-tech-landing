class AddLinkedinAndGithubColumnsToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :linkedin, :string
    add_column :people, :github, :string
  end
end
