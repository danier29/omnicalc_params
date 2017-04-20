class CalculationsController < ApplicationController

def flexible_square_5
# Parameters: {"number"=>"90"}

@user_num= params["number"].to_f

@user_num_sq= @user_num**2
render("calculations/flexible_square_5.html.erb")

end

def flexible_square_root

  @user_num= params["number"].to_f
  @user_number_sqrt= @user_num**(0.5)

  render("calculations/flexible_square_root.html.erb")

end

def flexible_payment

#:apr/:years/:principal
  @user_apr=params["apr"].to_f
  @user_years=params["year"].to_f
  @user_principal=params["principal"].to_f

  render("calculations/flexible_payment.html.erb")
end


def square
@user_num= params[:user_num].to_f
  render("calculations/square.html.erb")
end


def square_form

end


end
