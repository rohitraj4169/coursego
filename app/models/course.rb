class Course < ApplicationRecord
    validates :title, :short_description, :language, :price, :level,  presence: true
    validates :description,  presence: true, length: { :minimum => 5 }
    has_rich_text :description
    has_many :lessons, dependent: :destroy
    # has_one_attached :image
    # validates :image,  content_type: ['image/jpeg', 'image/png', 'image/jpg'],
    #  size: { less_than: 1.megabytes, message: 'size should be under 1  Megabytes'}

    has_one_attached :video_thumbnail
    validates :video_thumbnail, content_type: ['image/jpeg', 'image/png', 'image/jpg'],
     size: { less_than: 1.megabytes, message: 'size should be under 1  Megabytes' }

    has_one_attached :video
    validates :video, content_type: ['video/mp4 '],
      size: { less_than: 50.megabytes,message: 'size should be under 50 Megabytes'}
    #validates :video_thumbnail, presence: true, if: :video_present?
    #def video_present?
    #  self.video.present?
    #end
    extend FriendlyId
    friendly_id :title, use: :slugged
    belongs_to :user

    
  def self.ransackable_attributes(auth_object = nil)
    ["title", "language", "level", "price","short_description"]
  end
   def self.ransackable_associations(auth_object = nil)
    ["rich_text_description", "user"]
  end
      
    LANGUAGES = [:"English", :"Russian", :"Polish", :"Spanish"]
    def self.languages
      LANGUAGES.map { |language| [language, language] }
    end

    LEVELS = [:"Beginner", :"Intermediate", :"Advanced"]
    def self.levels
      LEVELS.map { |level| [level, level] }
    end

  # include PublicActivity::Model
  # tracked owner: Proc.new{ |controller, model| controller.current_user  }
 

  
end
