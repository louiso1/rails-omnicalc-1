class ZebraController < ApplicationController
  
  def square
    render({ :template => "/page_layouts/square"})
  end

  def square_result
    @number = params.fetch("number").to_f
    @square = @number ** 2
    render({ :template => "/page_layouts/square_result"})
  end

  def root
    render({ :template => "/page_layouts/root"})
  end

  def root_result
    @number = params.fetch("number").to_f
    @square_root_val = @number ** 0.5
    render({ :template => "/page_layouts/root_result"})
  end

  def payment
    render({ :template => "/page_layouts/payment"})
  end

  def payment_result
    apr = (params.fetch("apr").to_f) / 100 / 12
    @apr = apr.to_fs(:percentage, {:precision => 4})
  
    @years = (params.fetch("years").to_f) * 12
  
    principal = params.fetch("principal").to_f
    @principal = principal.to_fs(:currency)
  
    numerator = apr * principal
    denominator = 1 - ((1 + apr) ** (-@years))
  
    @payment = numerator / denominator
    @payment = @payment.to_fs(:currency)

    render({ :template => "/page_layouts/payment_result"})
  end

  def random
    render ({ :template => "page_layouts/random"})
  end

  def random_result
    @minimum = params.fetch("minimum").to_f
    @maximum = params.fetch("maximum").to_f
    @random = rand(@minimum..@maximum)
    render({ :template => "/page_layouts/random_result"})
  end

end
