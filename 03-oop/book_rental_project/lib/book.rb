require_relative 'database_config'
require 'active_record'

class Book < ActiveRecord::Base
  belongs_to :user, optional: true

  validates :title, presence: true
  validates :author, presence: true
  validates :copies, numericality: { greater_than_or_equal_to: 0 }
  
  before_save :format_strings

  # Check if all copies are checked out
  def checked_out?
    available_copies == 0
  end
  
  # How many copies are available
  def available_copies
    copies - checked_out_copies
  end
  
  # How many copies are currently checked out
  def checked_out_copies
    BookCheckout.where(book_id: id).count
  end

  # Check out a copy to a user
  def check_out(user)
    if checked_out?
      raise StandardError, "No copies available for checkout"
    end

    BookCheckout.create!(book: self, user: user)
  end

  # Return a copy from a specific user
  def check_in(user)
    checkout = BookCheckout.find_by(book_id: id, user_id: user.id)
    
    if checkout.nil?
      raise StandardError, "This book wasn't checked out by this user"
    end
    
    checkout.destroy
  end

  def to_s
    "#{title} by #{author} (#{available_copies}/#{copies} available)"
  end

  private

  def format_strings
    self.title = title.strip.capitalize if title
    self.author = author.strip.capitalize if author
  end
end