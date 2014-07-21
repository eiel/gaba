require "gaba/version"

class Gaba
  def start
    to_hash.each do |topic|
      date = topic[:date]
      url = topic[:url]
      title = topic[:title]
      puts "#{date} #{title} #{url}"
    end
  end

  def to_hash
    require 'nokogiri'
    require 'open-uri'
    website = 'http://www.gaba-2000.com/'
    doc = Nokogiri::HTML(open(website))
    doc.css('#topix dl').map do |elem|
      path = elem.css('dd a').attr('href').to_s
      require 'uri'
      require 'cgi'
      article_id = CGI.parse(URI.parse(path).query)["q"].first.to_i
      {
       artcile_id: article_id,
       url: website + path,
       date: elem.css('dt').text,
       title: elem.css('dd').text.gsub(/[\r\n]+/,"|")
      }
    end
  end

  def to_json
    require 'json'
    to_hash.to_json
  end
end
