require_relative 'test_helper'
require_relative '../lib/item'

class ItemTest < Minitest::Test
  attr_reader :engine

  def setup
    @engine = SalesEngine.new
    engine.startup
  end

  def test_it_initializes_an_item
    item = Item.new(nil, name: "cake")
    assert_equal "cake", item.name
  end

  def test_it_can_find_its_invoice_items
    repo = engine.item_repository
    item = repo.id("539")

    invoice_items = item.invoice_items

    assert_equal 1, invoice_items.size
  end


end
