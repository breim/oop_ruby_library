# frozen_string_literal: true

class Book
  attr_accessor :title, :author, :year

  def initialize(title, author, year)
    @title = title
    @author = author
    @year = year
  end

  def to_s
    "#{@title} by #{@author} (#{@year})"
  end
end
