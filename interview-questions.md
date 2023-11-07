# ASSESSMENT 5: Interview Practice Questions

Answer the following questions.

First, without external resources. Challenge yourself to answer from memory.

Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn. Write your researched answer in your OWN WORDS.

1. Compare and contrast arrays and hashes in Ruby. Include at least two differences and two similarities.

Your answer: Arrays and hashes are both enumerables that are collections of data. There are many built-in methods that are shared between enumerables. Data in each type can be reassigned, updated, added, or removed.

Array of Colors: ['Red', 'Green', 'Blue']
Hash of Cars: [
    { name: 'Sean', make: 'Chevy', color: 'Red'},
    { name: 'Brian', make: 'Dodge', color: 'Green'},
    { name: 'Remy', make: 'Ford', color: 'Blue'}
    ]

Arrays are collections of values. Hashes are collections of key: value pairs. Values in an array can be accessed by using their index. Values in a hash can be accessed by calling on their key. Arrays can be flattened. Arrays are ideal for isolating data of a similar type. Hashes are ideal for collecting and analyzing more complex combinations of data.

Researched answer: The output of a hash in the terminal uses an older syntax for writing hashes. For this older syntax, the colon is on the left side of the key and a hash rocket separates the key from its value. Arrays are bounded by square brackets. For hashes, key: value pairs for an item are bounded by curly brackets. If there are multiple items in a hash, this collection of items is bounded by square brackets similar to an array.

2. What does it mean to implement a TTD workflow?

Your answer: I know TDD is Test-Driven Development. I do not know what TTD is.

Researched answer: I believe TTD may be a typo. Implementing a TDD workflow would involve a cycle of writing tests before writing the code for those tests. Once the code passes the test, it can then be refactored if necessary. It is important to write the tests first to ensure the code that is written satisfies the desired intent for that code. TDD also helps identify the existence of bugs when they occur in the code.

3. Why would super be used in a Ruby class?

Your answer: Super allows a subclass to access the initialization method from its superclass. By using super, it can borrow the instance variables of its superclass.

Researched answer: The keyword super would be used whenever it is desired for a subclass' method to call on a method of the same name from its superclass. When super is used without arguments, it will pass along the arguments and block (if given) from the superclass to the subclass. If the method in the subclass uses a different number of arguments than the method in the superclass, then super should be written with parentheses. Arguments that need to be passed are written in the parentheses. Leave the arguments blank in the parentheses if no arguments need to be passed. The keyword super can only be used inside a method. The keyword super also returns the result from calling the parent method.

4. STRETCH: What is the difference between inheritance in JavaScript and inheritance in Ruby?

Researched answer: Inheritance for Ruby is very similar to inheritance in JavaScript. However, there are some minor differences.

In Ruby, every class has a superclass by default. BasicObject is the superclass of all other Ruby objects. JavaScript has a similar chain except that it uses prototypes. For JavaScript, null is the prototype that lies at the end of every prototype chain.

Classes and their children are constructed in similar ways in JavaScript and Ruby. However, their syntax differs slightly. For example, JavaScript uses the keyword extend to identify a class' superclass. Ruby uses a < instead.

Ruby has modules which are functions that can be shared between classes that may otherwise be unrelated.

## Looking Ahead: Terms for Next Week

Research and define the following terms to the best of your ability.

1. PostgreSQL: SQL (Structured Query Language) is a domaine specific language used for communicating with databases. Databases are organized collections of data stored on a computer or a server. PostgresSQL (a.k.a. Postgres) is an SQL that examines a database in the context of Object-Oriented Programming (OOP).

2. Ruby on Rails: Ruby on Rails is a server-side web application framework written in Ruby. It is an MVC (model-view-controller) framework. The model represents the database layer. The view represents what the user sees. The controller collects the appropriate data to construct the view. Ruby on Rails provides structures and configurations so developers can focus on the unique aspects of their applications.

3. Active Record: A query is code that requests specific data from a database. ORM (object-relational mapping) is a technique that uses OOP to bridge the gap between incompatible languages and allow them to communicate with each other. Active Record is a Rails ORM that allows users to interact with data stored in a database table as though they were Ruby objects. Active Record is useful for facilitating communication between a Rails application and a Postgres database by allowing developers to mimic the structure and syntax of SQL queries.