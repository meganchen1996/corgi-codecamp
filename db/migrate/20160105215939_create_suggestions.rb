class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
    	t.string :name, null: false
    	#belongs_to creates integer column and sticks _id at the end of the column name --> so will create column called puppy_id of type integer
    	t.belongs_to :puppy, null: false
    	t.timestamps null: false
    end
  end
end
