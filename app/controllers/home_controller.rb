class HomeController < ApplicationController
  def to_pdf_images
    html = render_to_string(:action => "html_with_images.html.haml", :layout => false)
    kit = PDFKit.new(html)
    send_data(kit.to_pdf, :filename => 'test_report_with_images.pdf', :type => 'application/pdf') 
  end

  def to_pdf_table
    html = render_to_string(:action => "html_with_table.html.haml", :layout => false)
    kit = PDFKit.new(html)
    send_data(kit.to_pdf, :filename => 'test_report_with_table.pdf', :type => 'application/pdf')
  end
end
