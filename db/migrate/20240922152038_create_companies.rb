class CreateCompanies < ActiveRecord::Migration[7.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.references :culture_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end