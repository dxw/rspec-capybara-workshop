class CreateSurveys < ActiveRecord::Migration[6.0]
  def change
    create_table :surveys do |table|
      table.string :ice_cream
    end
  end
end
