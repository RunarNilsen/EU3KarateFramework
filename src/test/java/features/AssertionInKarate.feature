Feature: Using match keyword


  Scenario: some matching example
    * def name = 'Severus Snape'
    * match name == 'Severus Snape'
    # similiar to Assert.assertEquals()
    * match name != 'Tom Riddle'


  Scenario: some matching example
    * def employee =
    """
    {
    "first_name":"TJ",
    "salary":24001,
    "active":true
    }
    """
    * def emp_name = employee.first_name
    * match emp_name == "TJ"
    * match employee.salary == 24001


  Scenario: fuzzy matching
    * def employee =
    """
    {
    "first_name":"TJ",
    "salary":24001,
    "active":true
    }
    """
    * match employee.first_name == '#string'
    * match employee.salary == '#number'
    * match employee.active == '#boolean'
    * match employee.lastName == '#notpresent'


  Scenario: Match contains
    * def foo = { bar: 1, baz: 'hello', ban: 'world' }

    * match foo contains { bar: 1 }
    * match foo contains { baz: 'hello' }
    * match foo contains { bar:1, baz: 'hello' }












