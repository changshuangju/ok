class Experiment < ActiveRecord::Base
  belongs_to :sheet
  attr_accessible :lab1, :lab2, :lab3, :lab4,
                  :lab5, :lab6, :lab7
end
