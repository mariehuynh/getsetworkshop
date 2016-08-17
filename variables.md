# Variables

Data you want to use more than once can be stored in variables, and you can create them by giving them a name and value. There are a couple different types.

A string of letters is referred to as a "string" or str for short

```
name = "Marie"

```

The interpreter knows name is a string

You can even add strings together

```
print ("cows " + "moo")

```

 Whole numbers are "integers", or int for short

```
burritoWeight = 16 # in ounces, so a huge burrito

print (burritoWeight) # What do you get?

```

When you don't have whole numbers, they're called "floats"

```
carnitasWeight = 8.0 # should I add more? I love carnitas.

carnitasWeight = 12.0 # gotta save room for guac though
                      # this also changes the variable

print (carnitasWeight) # What do you get?

```

You can do calculations with these variables and put the result in other variables

```
meatRatio = carnitasWeight / burritoWeight # mmm...

```

Then print the result
```
print (meatRatio)
```
Things get a little more tricky when you want to print a number with a string though. Again, the computer isn't very smart and in this language, you should match it, like you do in Spanish with masculine or feminine nouns. It's las tortillas but los frijoles. The grammar of Python requires numbers to be matched to strings of letters when you use them together like this:
```
print("This burrmeato is " + str(meatRatio) + " percent meat!")
```
Putting that str() around the number to make it play nicely with the other type is called typecasting.

Variables can also hold more than one item at a time. Here’s how you can make a list of names and get them out.
```
>>> ghostbusters = ["Abby", "Erin", "Jill", "Patty"]
>>> ghostbusters[0]
'Abby'
>>> ghostbusters[1]
'Erin'
>>> ghostbusters[2]
'Jill'
>>> ghostbusters[3]
'Patty'
>>> ghostbusters.append(“Secretary")
>>> ghostbusters
['Abby', 'Erin', 'Jill', 'Patty', ’Secretary']

```

Try adding your name to the list with append.


