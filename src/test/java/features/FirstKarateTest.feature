Feature: Welcome to Karate


  Scenario: how to print
    Given print "Hello World"
    When print 'another print'
    Then print 'then print'

  Scenario: how to print
    Given print "Some words to print"
    * print 'my name is', 'karate kid!'
    # we can comment like that
    * print 2+2


  Scenario: variables
    # defining variables
    * def name = 'Mike'
    * print 'my name is' + name
    * def age = 20
    * print name, 'is', age, 'years old'


  Scenario: difficult parameters: json object
    # we can create json and play with it easily
    * def student = {'name':'sam', 'owes_tuition':false}
    * print student
    * print student.name
    * print student.owes_tuition

  Scenario: another way of creating json
    * def student =
    """
  {
  "firstName":"Steven",
  "lastName": "King",
  "Salary" : 2099
  }
    """
    * print student.firstName
    * print student.lastName
    * print student.salary


  Scenario: JSON Array Objects
    * def students =
    """
    [
    {
     'name': 'sam',
     'owes_tuition':false
    },
    {
     'name': 'mike',
     'owes_tuition':true
    }
    ]
    """
    * print students
    * print students[0].name
    * print students[1].owes_tuition

