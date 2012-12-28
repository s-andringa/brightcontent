module Brightcontent
  module Attachable
    extend ActiveSupport::Concern

    included do
      add_brightcontent_column :attachments
      has_many :attachments, as: :attachable, dependent: :destroy, class_name: Brightcontent::Attachment
    end
  end
end
