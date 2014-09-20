
=begin
class Subdomain
  def self.matches?(request)
    request.subdomain.present? && request.subdomain != "www"
  end
end
=end



class Subdomain
  def self.matches?(request)
    request.subdomain.present? && request.subdomain != "www"
  end
end




