class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.math(/testing/)
      resp.status = 404
  end

end
