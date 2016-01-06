class CreatePuppies < ActiveRecord::Migration
  def change #basically generates SQL code
    create_table :puppies do |t| #t is table definition proxy
    	t.string :color
    	t.string :owner, null: false 
    	#t.string(:owner, {:null => false})
    	t.text :description
		t.timestamps null: false
    end
  end
end
