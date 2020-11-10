class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []
#student_hash
  def initialize(student_hash)
    self.send("name=", student_hash[:name])
    self.send("location=", student_hash[:location])
    self.send("profile_url=", student_hash[:profile_url])
    @@all << self
  end


  def self.create_from_collection(students_array)

    Scraper.scrape_index_page(students_array).each {|student| student = Student.new(name, location)}
  end

  def add_student_attributes(attributes_hash)
    #Scraper.scrape_profile_page(attributes_hash)
  end

  def self.all
    @@all
  end
end
