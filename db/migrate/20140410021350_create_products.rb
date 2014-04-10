class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :image

      # the following price has 10 significant figures and
      # two figures right of the decimal point

      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
