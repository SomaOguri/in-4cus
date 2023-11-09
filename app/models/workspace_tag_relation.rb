class WorkspaceTagRelation < ApplicationRecord
  
      belongs_to :workspace
      belongs_to :tag
end
