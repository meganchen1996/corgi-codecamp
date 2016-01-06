class Puppy < ActiveRecord::Base
	has_many :suggestions #A puppy has many suggestions

	#will validate that something is putdown for owner
	#meta-programming -> call this method and automatically generates code to run this in your class definition
	validates :owner, presence: true
	#validates(:owner, {presence => true})
end
