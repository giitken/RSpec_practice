require 'ostruct'
require 'Date'

class OrdersReport
  def initialize(orders, start_date, end_date)
    @orders = orders
    @start_date = start_date
    @end_date = end_date
  end

  def total_sales_within_date_range
    orders_within_range.map(&:amount).inject(0) do |sum, order|
      sum + amount
    end
  end

  private

  def orders_within_range
    @orders.select do |order|
      order.placed_between?(@start_date, @end_date)
    end
  end
end

class DateRange < Struct.new(:start_date, :end_date)
  def include?(date)
    (start_date..end_date).cover? date
  end
end

class Order < OpenStruct
  def placed_between?(date_range)
    date_range.include?(placed_at)
  end
end

order_within_range1 = Order.new(amount: 5,
                                placed_at: Date.new(2016, 10, 10))
order_within_range2 = Order.new(amount: 10,
                                placed_at: Date.new(2016, 10, 15))
order_out_of_range = Order.new(amount: 6,
                               placed_at: Date.new(2016, 1, 1))
orders = [order_within_range1, order_within_range2, order_out_of_range]


start_date = Date.new(2016, 10, 1)
end_date = Date.new(2016, 10, 31)

puts OrdersReport.new(orders, start_date, end_date)
