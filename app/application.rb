class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/testing"
      resp.write "Route not found"
      resp.status = 404

    elsif req.path.match(/items/)

      item_name = req.path.split("/items/").last

      if @@item.include?(item)
        resp.write "#{item.price}"
      else
        resp.write "Item not found"

      end
    end

    resp.finish
  end
end
