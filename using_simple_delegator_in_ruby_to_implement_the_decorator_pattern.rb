require 'rspec'
require 'date'

class Invoice
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def invoice_date
    Date.new(1990, 9, 19)
  end

end

class InvoiceDecorator < SimpleDelegator
  def invoice_month
    invoice_date.month 
  end

  def last_name
    name.split.last
  end
end

invoice = Invoice.new('zizo ribeiro')
invoice_two = Invoice.new ('zizo2 ribeiro')
decorated_invoice = InvoiceDecorator.new(invoice)
decorated_invoice_two = InvoiceDecorator.new(invoice_two)
decorated_invoice.invoice_month
decorated_invoice.last_name

decorated_invoice.__getobj__
decorated_invoice_two.__getobj__

describe 'Delegator' do 
  it 'can table an invoice as an argument and add fuctionality on top of class' do 
    invoice = Invoice.new('zizo ribeiro')
    decorated_invoice = InvoiceDecorator.new(invoice)
    expect(decorated_invoice.invoice_month).to eq(9)
  end

  it 'can work with data from the class' do 
    invoice = Invoice.new('zizo ribeiro')
    decorated_invoice = InvoiceDecorator.new('ribeiro')
  end

  it 'can access the decorated object' do 
    invoice = Invoice.new('zizo ribeiro')
    decorated_invoice = InvoiceDecorator.new(invoice)
    expect(decorated_invoice.__getobj__).to eq(invoice)
  end

end