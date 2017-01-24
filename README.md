### Coding Project - Ruby
--------------

Company X is developing a new app for student education. Students complete lessons and their progress is recorded.
Each lesson has 3 parts - 1, 2 and 3. There are 100 lessons in total.

#### PART 1

Generate a rails app that persists students and their progress.

Define routes for:
a) setting a student's progress - progress should consist of a lesson and part number.
b) returning a JSON representation of a student and their associated progress.

#### PART 2

Teachers have classes containing number of students.

a) Add a teacher model that is related to students
b) Create a reports page for a teacher to view progress all of their students.

#### PART 3

Calculating progress

a) add a method for updating student progress - this should verify that the
student is only able to complete the next part number in sequence e.g.

L1 P1, L1 P2, L1 P3, L2 P1, L2 P2 etc

#### To run
Clone repository
`git clone`

Migrate and seed the database     `rake db:migrate`  
`rake db:seed`

To run the server
`rails s`

#### Routes
##### Students

http://localhost:3000/students/1/progress - will show you json output of student progress
http://localhost:3000/students/1 - Student info

##### Teachers
http://localhost:3000/teachers/2/reports - will show you teachers students and their progress

#### Enhancements
Due to time restrictions (Only had one rather interrupted evening to complete this challenge) there are numerous enhancements and refactors:

- As it stands I am yet to complete Part 3, this is a dissapointment as I was hoping to have all three main parts met. You will find Pseudocode in the progress model to map where I got in my thinking. This code does not actaully work and would require more time to get working.

- Basic CRUD actions, I would like to add a simple for for adding students, lessons, parts etc.

- Tests, there is not nearly enough tests, TDD happened in the beginning then quickly abandoned with time restrictions. I would like to implement more controller tests for my actions, as well as integration
tests to test the flow of creating and updating a student and their progress. As those are the most important flows currently. I would also like to test the associations. I did this manually and possibly did not get all the associations as neat as they could be.

- I would like to add a default progress so each new student starts on lesson one, part one.

- Views I would like to add basic styling and more forms to accompany the CRUD actions mentioned above.

- Deploying - I was playing on having it deployed on Heroku for demo purposes

#### Challenge
Biggest challenge was feeling rushed, I would have benefited from more time especially for testing as I am a little rusty and needed time to refresh
