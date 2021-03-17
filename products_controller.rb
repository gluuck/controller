class ProductsController < ApplicatinController
  def orders_products
    @orders = Order.all
    @order = Order.find(params[:order_id])
    @order_products = @orders.select{|prod| prod.id == @order}.map(&:products)  
  end
