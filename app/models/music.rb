class Music < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :signposts


  def show_signpost num
    return Signpost.find_by_id(num)
  end


end
