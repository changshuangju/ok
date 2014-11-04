class Talk < ActiveRecord::Base
  belongs_to :sheet
  attr_accessible :discussion1, :discussion2, :discussion3, :discussion4, :discussion5, :discussion6, :discussion7, :discussion8,
                  :discussion9, :discussion10, :discussion11

end
