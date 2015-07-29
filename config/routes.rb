Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square_root/:number", { :controller => "calculations", :action => "square_root" })
  get("/random/:50/:100", { :controller => "calculations", :action => "random"})
  get("/payment/:apr/:years/:principal", { :controller => "calculations", :action => "monthly_payment"})
end
 