class CharacterShow < ActiveRecord::Base
	belongs_to :show
	belongs_to :character
end