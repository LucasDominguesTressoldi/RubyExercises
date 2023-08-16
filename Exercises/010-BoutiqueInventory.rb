class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.map { |items| items[:name] }.sort
  end

  def cheap
    @items.select { |items| items[:price] < 30 }
  end

  def out_of_stock
    @items.select { |items| items[:quantity_by_size].length == 0 }
  end

  def stock_for_item(name)
    @items.find { |items| items[:name] == name}[:quantity_by_size]
  end

  def total_stock
    @items.map { |items| items[:quantity_by_size].map { |_, price| price } }.flatten.sum
  end

  private
  attr_reader :items
end
