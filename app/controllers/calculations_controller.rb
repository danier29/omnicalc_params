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
  @user_apr=(params["apr"].to_f)/100
  interest_rate_per_month= @user_apr/(12*100)
  @user_years=params["years"].to_f
  @user_principal=params["principal"].to_f


  numerator= interest_rate_per_month
  @total_months= @user_years*12
  denom_pta= (1+(interest_rate_per_month))**(-1*@total_months)
  denominator= 1- denom_pta

  @user_monthly_payment= (numerator/denominator)*@user_principal

  render("calculations/flexible_payment.html.erb")

end

#/flexible/random/:beg_number/:end_number"
def flexible_random
@beg_number=(params["beg_number"].to_f)
@end_number=(params["end_number"].to_f)
@random_gen_number= rand(@beg_number..@end_number)
render("calculations/flexible_random.html.erb")

end

def square
@user_num= params[:user_num].to_f
  render("calculations/square.html.erb")
end

def square_form
  render("calculations/square_form.html.erb")
end

def square_root
  @user_num= params[:user_num].to_f
  render("calculations/square_root.html.erb")
end

def square_root_form
  render("calculations/square_root_form.html.erb")
  end

def payment_form
  render("calculations/payment_form.html.erb")
  #code
end

def payment
  @user_apr=(params["user_apr"].to_f)
  interest_rate_per_month= (@user_apr)/(12*100)
  @user_years=params["user_years"].to_f
  @user_principal=params["user_principal"].to_f

  numerator= interest_rate_per_month
  @total_months= @user_years*12
  denom_pta= (1+(interest_rate_per_month))**(-1*@total_months)
  denominator= 1- denom_pta

  @user_monthly_payment= (numerator/denominator)*@user_principal

  render("calculations/payment.html.erb")
end

end
