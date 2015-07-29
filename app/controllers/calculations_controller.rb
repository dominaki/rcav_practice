class CalculationsController < ApplicationController
  
  def instructions
    render("instructions.html.erb")
  end

def square_root
	@square_root = params["number"]
	@outcome = @square_root.to_i 
	@answer = Math.sqrt(@outcome)
	@answer_round = @answer.round(2)

render("square_number.html.erb")

end


def random 
	@random = params["50"]
	@min = @random.to_i
	@big = params["100"]
	@max = @big.to_i
	@outcome = rand(@min..@max)
	render ("random.html.erb")
end


def  monthly_payment

    @apr = params["apr"].to_f
    @int_rate = @apr /100
    @years = params["years"].to_i
    @principal = params["principal"].to_i

    @rate = @apr / 100 / 12
    @nper = @years * 12

    @monthly_payment = (@rate * @principal)/(1 - (1 + @rate)**-@nper)
    @round_monthly_payment = @monthly_payment.round(2)

render("payment.html.erb")

end
end

