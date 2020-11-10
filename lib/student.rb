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
    students_array = Student.new(name, location)
    new_student = Scraper.scrape_index_page(students_array)
    new_student
  end

  def add_student_attributes(attributes_hash)

  end

  def self.all
    @@all
  end
end
