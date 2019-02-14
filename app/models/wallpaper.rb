class Wallpaper < ApplicationRecord

	belongs_to :user


	validates :title, :content, :user_id, presence: true
end
