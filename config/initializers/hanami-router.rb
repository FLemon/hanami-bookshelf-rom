module URI
  class << self
    def escape(str)
      res = str.dup
      res.scan(/[^\/]+/).each { |i| res.gsub!(i, CGI.escapeURIComponent(i)) }
      p "escape before: #{str}, after: #{res}"
      res
    end

    def unescape(str)
      res = CGI.unescapeURIComponent(str)
      p "unescape before: #{str}, after: #{res}"
      res
    end
  end
end
