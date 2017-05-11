require 'rspec'


def invoice_filter invoices
  invoices.map(&:total).partition { |i| i > 300 }
end





describe 'Invoice filter' do
  it 'splits invoices over 300' do
    Invoice = Struct.new(:title, :total, :category)
    google = Invoice.new('Google', 500, 'SEM')
    facebook = Invoice.new('Facebook', 1000, 'Social')
    linkedIn = Invoice.new('linkedIn', 200, 'Social')

    invoices = [google, facebook, linkedIn]

    expect(invoice_filter(invoices).first).to eq([500, 1000])
    expect(invoice_filter(invoices).last).to eq([200])
  end
end