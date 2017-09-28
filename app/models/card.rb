class Card < ActiveRecord::Base
  
  validates_presence_of :title, :snippet, :content

  def self.search_by_title(search_term)
    return [] if search_term.blank?
    Card.where("title LIKE ?", "%#{search_term}%").order("created_at DESC")
  end
end
