require_relative 'database_config'
require 'active_record'

class BookCheckout < ActiveRecord::Base
  belongs_to :book
  belongs_to :user
end