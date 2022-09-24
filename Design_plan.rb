{{PROBLEM}} Multi-Class Planned Design Recipe
1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices.
#order/list of dishes with prices

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes.
#select several dishes (do i need a menu?)

As a customer
So that I can verify that my order is correct
I would like to see an itemised receipt with a grand total.
#verify order/itemised receipt/grand total

Use the twilio-ruby gem to implement this next one. You will need to use doubles too.

As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered.
#send /receive text

Fair warning: if you push your Twilio API Key to a public Github repository, anyone will be able to see and use it. 
What are the security implications of that? How will you keep that information out of your repository?
#Can I make this method private?

2. Design the Class System
Consider diagramming out the classes and their relationships. Take care to focus on the details you see as important, 
not everything. The diagram below uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com

#order/list of dishes with prices
#select several dishes (do i need a menu?)
#verify order/itemised receipt/grand total
#send /receive text

# So far I can't see a multi class sytem in this task
┌────────────────────────────┐
│ MusicPlayer                │
│                            │
│ - add(track)               │
│ - all                      │
│ - search_by_title(keyword) │
│   => [tracks...]           │
└───────────┬────────────────┘
            │
            │ owns a list of
            ▼
┌─────────────────────────┐
│ Track(title, artist)    │
│                         │
│ - title                 │
│ - artist                │
│ - format                │
│   => "TITLE by ARTIST"  │
└─────────────────────────┘
Also design the interface of each class in more detail.

#order/list of dishes with prices
#select several dishes (do i need a menu?)
#verify order/itemised receipt/grand total
#send /receive text

#to make it more difficult can remove orders


class FoodOrder
  def initialize
    @dishes = {} # hash containing number of options with prices
    @order = {} # hash containing number of options with prices
  end

  def menu
    #Puts a menu with options
    # List dishes
    # Select dish for your order
    # verify that my order is correct - this puts a itemised receipt
    # Place order - a text will be sent
  end
    
  def list_dishes
    #Takes hash and puts formatted output with options and price
    #calls menu
  end

  def order_dish(dish)
    #Takes user input and adds to array
    #@order << dish
    #calls menu
  end

  def verify
    #Puts a itemised list with dishes prices and add total bill
    #calls menu
  end

  def confirm_text
    #"Thank you! Your order was placed and will be delivered before 18:52"
    # ends program 
  end
end

3. Create Examples as Integration Tests
Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.

# EXAMPLE

# creates class
new_order = FoodOrder.new

#Test menu funtions - will need to use that bloody doubles for input

new_order = FoodOrder.new

# example code
# terminal = double :terminal
# expect(terminal).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
# expect(terminal).to receive(:puts).with("Please enter a number").ordered
# expect(terminal).to receive(:gets).and_return("4").ordered
# expect(terminal).to receive(:puts).with("Please enter another number").ordered
# expect(terminal).to receive(:gets).and_return("3").ordered
# expect(terminal).to receive(:puts).with("Here is your result: 4 - 3 = 1").ordered
# calcy = InteractiveCalculator.new(terminal)
# calcy.run

#Remeber with the puts and gets you have to inject the info into
#Is there an issue returning a method call in test? only one way to find out - test it!


# Gets all tracks
library = MusicLibrary.new
track_1 = Track.new("Carte Blanche", "Veracocha")
track_2 = Track.new("Synaesthesia", "The Thrillseekers")
library.add(track_1)
library.add(track_2)
library.all # => [track_1, track_2]
4. Create Examples as Unit Tests
Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

# EXAMPLE

# Constructs a track
track = Track.new("Carte Blanche", "Veracocha")
track.title # => "Carte Blanche"
Encode each example as a test. You can add to the above list as you go.

5. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.