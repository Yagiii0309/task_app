class Room < ApplicationRecord
    mount_uploader :img, ImgUploader
    has_many :reservations
end