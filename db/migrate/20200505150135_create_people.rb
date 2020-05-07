class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :city
      t.string :recent_company
      t.boolean :current
      t.string :job_title
      t.string :expertise

      t.timestamps
    end
  end
end
