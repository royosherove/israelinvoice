require 'prawn'

class PdfMaker
  def self.make_pdf(invoice)
    Prawn::Document.generate "/public/hello.pdf" do
      text invoice.client.name
      text invoice.client.address
      text invoice.client.phone
    end
  end
end
