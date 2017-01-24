#teachers
rose = Teacher.create(name: 'Rose', surname: 'Oval')
bob = Teacher.create(name: 'Bob', surname: 'Sinclir')

#students
julie = Student.create(username: "Jruby", name: 'Julie', surname: 'Ruby', teacher_id: rose.id)
tooty = Student.create(username: "tootyfruity", name: 'Tony', surname: 'Bob', teacher_id: bob.id)
boshd = Student.create(username: "boshd", name: 'diego', surname: 'bosh', teacher_id: bob.id)

#lessons and it's 3 parts
lesson1 = Lesson.create(number:1, description: 'first lesson', content: 'all the learnings')
Part.create(number:1, description: 'Part one of first lesson', content: 'all the learnings', lesson_id: lesson1.id)
Part.create(number:2, description: 'Part two of first lesson', content: 'all the learnings', lesson_id: lesson1.id)
Part.create(number:3, description: 'Part three of first lesson', content: 'all the learnings', lesson_id: lesson1.id)

lesson23 = Lesson.create(number:23, description: '23rd lesson', content: 'all the learnings')
Part.create(number:1, description: 'Part one of 23rd lesson', content: 'all the learnings', lesson_id: lesson23.id)
part233 = Part.create(number:2, description: 'Part two of 23rd lesson', content: 'all the learnings', lesson_id: lesson23.id)
Part.create(number:3, description: 'Part three of 23rd lesson', content: 'all the learnings', lesson_id: lesson23.id)

lesson56 = Lesson.create(number:56, description: '56th lesson', content: 'all the learnings')
Part.create(number:1, description: 'Part one of 56th lesson', content: 'all the learnings', lesson_id: lesson56.id)
part562= Part.create(number:2, description: 'Part two of 56th lesson', content: 'all the learnings', lesson_id: lesson56.id)
Part.create(number:3, description: 'Part three of 56th lesson', content: 'all the learnings', lesson_id: lesson56.id)

lesson100 = Lesson.create(number:100, description: 'final lesson', content: 'all the learnings')
part1001 = Part.create(number:1, description: 'Part one of final lesson', content: 'all the learnings', lesson_id: lesson100.id)
Part.create(number:2, description: 'Part two of final lesson', content: 'all the learnings', lesson_id: lesson100.id)
Part.create(number:3, description: 'Part three of final lesson', content: 'all the learnings', lesson_id: lesson100.id)

#student_progress
julie_progress = Progress.create(lesson_id:lesson100.id, part_id: part1001.id, student_id: tooty.id)
julie_progress = Progress.create(lesson_id:lesson56.id, part_id:part562.id, student_id: julie.id)
julie_progress = Progress.create(lesson_id:lesson23.id, part_id:part233.id, student_id: boshd.id)
