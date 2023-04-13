=begin
class QrCodesController < ApplicationController
  def process_text
    @user_text = params.fetch("content")

    qrcode = RQRCode::QRCode.new(@user_text)

    @svg = qrcode.as_svg

    render({ :template => "my_templates/text.html.erb" })
  end
end
=end

class QrCodesController < ApplicationController
  def process_text
    render({ :template => "my_templates/text.html.erb" })

    @user_text = params.fetch("content")

    qrcode = RQRCode::QRCode.new(@user_text)

    @svg = qrcode.as_svg
  end
end
