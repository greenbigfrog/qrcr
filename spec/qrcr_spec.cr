require "./spec_helper"

describe QR do
  pending "generates a QR code" do
    data = "some data string"
    generate_qr(data, 25, 0).should eq QRencode::QRcode.new(data)
  end
end
