class Tag < ApplicationRecord
    has_many :workspace_tag_relations, dependent: :destroy
    has_many :workspaces, through: :workspace_tag_relations
end