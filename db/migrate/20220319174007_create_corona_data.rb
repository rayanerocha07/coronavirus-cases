# frozen_string_literal: true

class CreateCoronaData < ActiveRecord::Migration[5.2]
  def change
    create_table :corona_data do |t|
      t.string :country
      t.string :confirmed_cases

      t.timestamps
    end
  end
end
