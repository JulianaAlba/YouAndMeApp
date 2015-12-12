class Picture < ActiveRecord::Base

    has_attached_file :pictureinteira, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :pictureinteira, content_type: /\Aimage\/.*\Z/

end
