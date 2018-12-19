require "qrencode"
require "stumpy_png"
include StumpyPNG

module QR
  def generate_qr(data : String, size : Int32, margin : Int32)
    qr = QRencode::QRcode.new(data)

    scale = (size * (1 - margin / 100.to_f)).to_i / qr.width
    dead = size - qr.width * scale

    puts "Version: #{qr.version} Scale: #{scale} Size: #{size} Dead: #{dead}"

    Canvas.new(size, size) do |x, y|
      x = (x - dead / 2) / scale
      y = (y - dead / 2) / scale
      if 0 <= x < qr.width && 0 <= y < qr.width
        if QRencode::Util.black?(qr.data[x + qr.width * y])
          RGBA::BLACK
        else
          RGBA::WHITE
        end
      else
        RGBA::WHITE
      end
    end
  end
end
