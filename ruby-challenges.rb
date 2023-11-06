# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# -------------------1) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], notheast: ['Maine', 'New Hampshire', 'Rhode Island'] }
# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington']

# Pseudo code:
# input: Hash
# output: Array
# Use hash.values to convert the hash into an array.
# Use .flatten to remove the nested array.
# Use .sort to alphabetize the array.

def alphabetize_hash hash
    return hash.values.flatten.sort
end

p alphabetize_hash us_states        # ["Arizona", "California", "Idaho", "Maine", "Nevada", "New Hampshire", "Oregon", "Rhode Island", "Washington"]

# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.

# Pseudo code:
# arguments: model, wheels
# default values: wheels = 2
# instance variables: model, wheels, current_speed
# bike_info method: String interpolation with all data from bike object

class Bike
    attr_accessor :model, :wheels, :current_speed

    def initialize model, wheels=2
        @model = model
        @wheels = wheels
        @current_speed = 0
    end

    def bike_info
        if @wheels == 1
            "The #{model} bike has #{wheels} wheel and is going #{current_speed} mph."
        else
            "The #{model} bike has #{wheels} wheels and is going #{current_speed} mph."
        end
    end

    def pedal_faster speed
        @current_speed += speed
    end

    def brake speed
        speed >= current_speed ? @current_speed = 0 : @current_speed -= speed
    end
end

my_bike = Bike.new('Trek')
p my_bike.bike_info     # "The Trek bike has 2 wheels and is going 0 mph."

# -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0

# Pseudo code:
# pedal_faster method: increases current_speed by indicated value
# brake method: if indicated value is greater than current_speed, set current_speed to 0; else, decrease current_speed by indicated value

my_bike.pedal_faster(10)
p my_bike.current_speed     # 10

my_bike.pedal_faster(18)
p my_bike.current_speed     # 28

my_bike.brake(5)
p my_bike.current_speed     # 23

my_bike.brake(25)
p my_bike.current_speed     # 0