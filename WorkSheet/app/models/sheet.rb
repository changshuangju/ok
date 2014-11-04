class Sheet < ActiveRecord::Base
  has_many :experiments
  has_many :talks
  attr_accessible :student_name, :student_number, :project, :labs, :discussions, :test, :final
  
end
