module HoneysHelper
  def filter(egg)
    @bool= 'false'
    filtered_orders = egg.egg_orders
    filtered_orders do |order|
      if order.user_id == current_user.user_id
        @bool = 'true'
      end
    end
  end
end
