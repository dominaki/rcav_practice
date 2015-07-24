Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square_root/8", { :controller => "calculations", :action => "square_root" })
  get("/random/50/100", { :controller => "calculations", :action => "random"})
  get("/payment/34/60/30000", { :controller => "calculations", :action => "payment"})
end
