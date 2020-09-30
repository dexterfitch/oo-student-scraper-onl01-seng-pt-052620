class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def hash_variable(hash)
    hash.each do |key, val|
      instance_variable_set("@#{key}", val)
    end
  end

  def initialize(student_hash)
    student_hash.each do |key, val|
      instance_variable_set("@#{key}", val)
    end

    @@all << self
  end

  def self.create_from_collection(students_array)
    students_array.each do |student|
      new(student)
    end
  end

  def add_student_attributes(attributes_hash)
    attributes_hash.each do |key, val|
      instance_variable_set("@#{key}", val)
    end
  end

  def self.all

  end
end
