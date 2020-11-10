class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []
#student_hash
  def initialize(name:, location:)
    @name = name
    @location = location
    @@all << self
  end


  def self.create_from_collection(students_array)
    students_array = Scraper.new
    Scraper.scrape_index_page(students_array) = Student.new(name, location)
    students_array
  end

  def add_student_attributes(attributes_hash)
    #Scraper.scrape_profile_page(attributes_hash)
  end

  def self.all
    @@all
  end
end
