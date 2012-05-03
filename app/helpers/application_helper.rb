module ApplicationHelper
  def amazon_search_url(product)
         raw   "<a href=\"http://www.amazon.com/s/ref=nb_sb_noss_1?url=search-alias%3Daps&field-keywords=#{product}\" target=\"_blank\" >#{product}</a>"
  end
end
