require_relative 'person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, name = 'Unknown', classroom: nil, parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def student_classroom(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
