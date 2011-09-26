class InvoicesController < ApplicationController
  def new
    @invoice = Invoice.new
    3.times do
      item = @invoice.items.build
    end
  end

  def create
    @invoice = Invoice.new(params[:invoice])

    if @invoice.save
      redirect_to @invoice, :notice => 'New invoice created'
    else
      @invoice.items.build unless @invoice.items.present?
      render 'new'
    end
  end

  def show
  end

  def index
  end

end
