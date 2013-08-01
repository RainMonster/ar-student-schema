require 'date'
require_relative '../../db/config'

class Student < ActiveRecord::Base
  
  attr_accessor :first_name, :last_name, :birthday

  validates_uniqueness_of :email
  validates_format_of :email, :with => /\w+@\w\w+\.\w\w+/
  validates_length_of :phone, :minimum => 10
  validate :cannot_be_a_toddler

  def cannot_be_a_toddler
    if age < 5
      errors.add(:birthday, "can't be a toddler")
    end 
  end

  def name
    "#{@first_name} #{@last_name}"
  end

  def age
    (Date.today - @birthday).to_i/365
  end

end
