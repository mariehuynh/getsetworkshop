import sys
import random

import nltk # for sentence parsing
from pymarkovchain import MarkovChain

# open text file
text_file = open('mysite/levantandolosmanos.txt', 'r+')
#text_file2 = open('mysite/bird.txt', 'r+')
#text_file3 = open('mysite/hello.txt', 'r+')
#text_file4 = open('mysite/youngandbeautiful.txt', 'r+')

text_string = text_file.read()
#text_string2 = text_file2.read()
#text_string3 = text_file3.read()
#text_string4 = text_file4.read()
#print (text_string)

mc = MarkovChain()
mc.generateDatabase(text_string) #+ text_string2) #+ text_string3 + text_string4)

def get_next_chunk():


    lyric = mc.generateString()

    while len(lyric) < 20:
        lyric = mc.generateString()
    return lyric + "."



# A very simple Bottle Hello World app for you to get started with...
from bottle import default_app, route, template

@route('/')
def hello_world():
    #return 'Hello from Bottle!'
    lyrics = []
    for x in range(5):
        lyrics.append(get_next_chunk())
    return template('lyrics_template', lyrics = lyrics)


@route('/hello')
@route('/hello/<name>')
def hello(name='World'):
    return template('hello_template', name=name)


@route('/parrot')
@route('/parrot/<something>')
def parrot(something='Parrot'):
    return template('parrot_template', something=something)






application = default_app()

print (get_next_chunk())