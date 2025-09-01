require_relative 'database_config'
require 'active_record'

class User < ActiveRecord::Base
  has_many :book_checkouts
  has_many :books, through: :book_checkouts
  
  validates :name, presence: true
  
  def checkout_book(book)
    book.check_out(self)
  end
  
  def return_book(book)
    book.check_in(self)
  end
  
  def checked_out_books
    books
  end
  
  def to_s
    "#{name} (#{checked_out_books.count} books checked out)"
  end
end