class Link < ActiveRecord::Base
  attr_accessible :http_status, :in_url, :out_url
  validates :in_url, :out_url, :http_status, presence: true
  validates :in_url, uniqueness: true

  def prepend_http
    unless (self.out_url =~ /http/) == 0
      self.out_url.prepend 'http://'
    end
  end
end
