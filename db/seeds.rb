# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Teachers

User.destroy_all

teacher = User.create email: "ioreshko@gmail.com", name: "Орешко Игорь Георгиевич",
  is_teacher: true, password: "12345678", password_confirmation: "12345678"
teacher2 = User.create email: "teacher@gmail.com", name: "Teacher",
  is_teacher: true, password: "12345678", password_confirmation: "12345678"

# Subjects
10.times do |i|
  Subject.create!(owner: teacher, name: "subject #{i}", description: "lol")
end

# Lessons
Subject.all.each_with_index do |subject, i|
  date = DateTime.now
  50.times do |j|
    date += 7.days
    lesson = Lesson.create!(subject: subject, name: "", kind: Lesson::KINDS.sample, date: date)
    if lesson.kind == "practice"
      Task.create! lesson: lesson, name: "task #{j}", description: "do the task dude"
    end
  end
end

# Students
20.times do |i|
  student = User.create! email: "student#{i}@gmail.com", name: "Студент #{i}",
    is_teacher: true, password: "12345678", password_confirmation: "12345678"
end
