class Place < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :photos

  geocoded_by :address
  after_validation :geocode

  validates :name, :address, :description, :presence => true
  validates :name, :length => { minimum: 3 }


########################################
##  Test Search Functionality         ##
##  Broken b/c of Kaminari pagination ##
########################################

#  def self.search(search)
#    if search
#      where("name LIKE ?", "%#{search}%").page(params[:page]).per(6)
#    else
#      find(:all)
#    end
#  end

end
