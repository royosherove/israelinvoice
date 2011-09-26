class InvoicesController < ApplicationController
  def new
    @invoice = Invoice.new
    3.times do
      item = @invoice.items.build
    end
  end

  def create
  end

  def show
  end

  def index
  end

end
