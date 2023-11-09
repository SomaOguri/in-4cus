class Workspace < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :user   
    has_many :workspace_tag_relations, dependent: :destroy
    has_many :tags, through: :workspace_tag_relations
end
