require 'prawn'

class PdfMaker
  def self.make_pdf(fields)
    Prawn::Document.generate "#{Rails.root}/public/hello.pdf" do
      text "hello world"
    end
  end
end
