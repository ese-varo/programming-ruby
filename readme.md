### Programming Ruby 1.9 & 2.0
Here you can find code examples and exercises written while I'm reading the 'Programming Ruby' book.
Also this readme is used for placing comments/annotations taken while reading the book.

---
### Annotations

#### Ruby.new
- yield
- printf: prints its arguments under the control of a format string
    printf("Number: %5.2f,\nString: %s\n", 1.23, 'hello')

- ARGV: array that contains the arguments passed to the running program

#### Classes, Objects and Variables

- Attributes:
  - methods that let you access and manipulate the state of an object from the outside.
  - The internal state of an object is held in instance variables. The external
  state is exposed through methods we're calling attributes.

- Uniform Access Principle: hiding the diference between instance variables and
  calculated values.
    e.g: Create virtual instance varialbe using attribute methods

- Access Control
  - Public methods
  - Protected methods
  - Private methods

#### Containers, Blocks and Iterators
- Iterator: a method that invokes a block of code repeatedly.
- Blocks:
  - To define block-local variables they should be written after a semicolon in
    the block's parameter list: 
    `[1,2,3,4].each do |value; square|
       square = value * value # this is a different variable
       sum   += square
     end`
  - block_given? - Inside a method you can detect whether your caller has passed in a block

#### Inheritance, modules and mixins
- `super`: Ruby sends a message to the parent of the current object, asking it to invoke 
  a method of the same name as the method invoking super. It passes this method the parameters
  that were passed to super.

- modules: 
  - provide a namespace and prevent name clashes
  - support the mixin facility
  - methods can be defined preceding its name with the module's name and a period
    `def MyModule.method` or preceding its name with the `self` keyword `def self.method`
  - module methods can be called by preceding its name with the module's name and
    a period `MyModule.method`
  - module constants are referenced using the module name and two colons `MyModule::CON`

- mixins: are modules mixed-in classes and its instance methods hapen to be part
  of the class in which it is mixed in, and so they behave as instance mathods
  of the class also.
  - `include`: it makes a reference to a module, if the module is in an external
    file that file should be loaded (using `require/load`) in order to be able 
    to mixed in the module.
  - instance variables in mixins pass to be instance variables of the client class.
  - In general, a mixin that requires its own state is not a mixin--it should be
    written as a class.




#### Todays topics 
- Atrributes methods to access variables or any instance variable?
