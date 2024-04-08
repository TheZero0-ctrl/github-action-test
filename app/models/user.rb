class Book < ApplicationRecord
  def average_rating
    reviews.average(:rating)
    abc = 12
  end

  def test_code_for_e
    book = Book.create(title: 'test')
    book.average_rating
  rescue StandardError => e
    puts e.message
  end

  def test_for_flay
    opts.on("-m", "--mass MASS", Integer, "Sets mass threshold (default = #{options[:mass]})") do |m|
      options[:mass] = m.to_i
    end
  end

  def flay
    opts.on("-m", "--mass MASS", Integer, "Sets mass threshold (default = #{options[:mass]})") do |m|
      options[:mass] = m.to_i
    end
  end
  
  def vulnerable_method
    system(`ls #{params[:file]}`)
  end
end
