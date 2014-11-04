class ApplicationController < ActionController::Base
  protect_from_forgery
  def judge
    user = User.first
    if user.admin == false
      redirect_to :controller => 'home', :action => 'log_in'
    end
  end
  def reset
   temp = User.first
   if temp.admin == true
      temp.admin = false
      temp.save 
   end
  end
  def keep_balance
    temp1 = Sheet.last
    temp2 = Talk.last
    temp3 = Experiment.last
    if temp1.id != temp2.sheet_id
      redirect_to :controller =>'sheets', :action => 'new'
    elsif temp1.id != temp3.sheet_id
      redirect_to :controller => 'sheets', :action => 'new'
    end
  end 
end
