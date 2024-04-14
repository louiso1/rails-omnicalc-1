Rails.application.routes.draw do

  get("/", { :controller => "zebra", :action => "square"})

  get("/square/new", { :controller => "zebra", :action => "square"})
  get("/square/results", { :controller => "zebra", :action => "square_result"})

  get("/square_root/new", { :controller => "zebra", :action => "root"})
  get("/square_root/results", { :controller => "zebra", :action => "root_result"})

  get("/payment/new", { :controller => "zebra", :action => "payment"})
  get("/payment/results", { :controller => "zebra", :action => "payment_result"})

  get("/random/new", { :controller => "zebra", :action => "random"})
  get("/random/results", { :controller => "zebra", :action => "random_result"})
  
end
