class Upload < ActiveRecord::Base
  attr_accessor :upload
  has_attached_file :upload, 
                    hash: ":class/:attachment/:id/:style/:updated_at",
                    hash_secret: "longSecretString",
                    styles: { thumb: '200x200', croppable: '600X600>', big: '1000X1000>'}
  validates_attachment_content_type :upload, content_type: ["image/jpeg", "image/gif", "image/png"]
  include Rails.application.routes.url_helpers
  # binding.pry
  def to_jq_upload
    {
      "name" => read_attribute(:upload_file_name),
      "size" => read_attribute(:upload_file_size),
      "id"   => read_attribute(:id),
      "url" => upload.url(:original),
      "delete_url" => upload_path(self),
      "delete_type" => "DELETE" 
    }
  end

  def upload_content_type
  end

end
