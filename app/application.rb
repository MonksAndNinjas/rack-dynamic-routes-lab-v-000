class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/testing"
      resp.write "Route not found"
      resp.status = 404

    elsif req.path=="/items"

      item = req.params["item"]

      if @@item.include?(item)
        resp.write "item"
    end

    resp.finish
  end
end
