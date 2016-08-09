# Word Cloud



Now, back to things you can actually do. There’s a python library called wordcloud that takes the most common words in a text file and fills a shape with it. So you can do things like this, which is generated using the text of Alice in Wonderland.

Sample code is here:

[https:\/\/github.com\/amueller\/word\_cloud](https://github.com/amueller/word_cloud/tree/master/examples)

[https:\/\/github.com\/amueller\/word\_cloud\/blob\/master\/examples\/masked.py](https://github.com/amueller/word_cloud/blob/master/examples/masked.py)





Back to the console!

* Get out of python
  * quit\(\)

* install wordcloud library
  * pip install wordcloud -t .

* Copy these raw files to your server
  * masked.py
  * alice\_mask.png
  * alice.txt


* In the console, type
  * python masked.py

* It should generate the file alice.png. Click the download icon to see it.
* Once you get that working, modify masked.py to use text and image of your choosing
  * text
    * Free books
      * [https:\/\/www.gutenberg.org](https://www.gutenberg.org)

    * Your own writing
    * Favorite lyrics


* * image
    * must be black and white; transparent background will not work
    * must be about the same size; large files take FOREVER
      * icons are usually small
      * if you want a bigger image, it can be scaled up later




















This library ignores boring common words. To see what is being ignored,
```
>>> from wordcloud import STOPWORDS
>>> STOPWORDS
set(['', 'all', "she'll", 'just', "don't", 'being', 'over', 'through', 'yourselves', 'its', 'before', "he's", "when's", "we've", 'had', 'should', "he'd", 'to', 'only', "there's", 'those', 'under', 'ours', 'has', "haven't", 'do', 'them', 'his', "they'll", 'get', 'very', "who's", "they'd", 'cannot', "you've", 'they', 'not', 'during', 'yourself', 'him', 'nor', "we'll", 'like', 'did', "they've", 'this', 'she', 'each', "won't", 'where', "mustn't", "isn't", "i'll", "why's", 'www', 'because', "you'd", 'doing', 'some', 'up', 'are', 'further', 'ourselves', 'out', 'what', 'for', 'while', "wasn't", 'does', "shouldn't", 'above', 'between', 'ought', 'be', 'we', 'who', "you're", 'were', 'here', 'hers', "aren't", 'by', 'both', 'about', 'would', 'of', 'could', 'against', "i'd", "weren't", "i'm", 'com', 'or', "can't", 'own', 'into', 'whom', 'down', "hadn't", "couldn't", 'your', "doesn't", 'from', "how's", 'her', 'their', "it's", 'there', 'been', 'why', 'few', 'too', 'themselves', 'was', 'until', 'more', 'himself', "where's", "i've", 'with', "didn't", "what's", 'but', 'herself', 'than', "here's", 'he', 'me', "they're", 'myself', 'these', "hasn't", 'below', 'r', 'can', 'theirs', 'my', "wouldn't", "we'd", 'and', 'then', 'is', 'am', 'it', 'an', 'as', 'itself', 'at', 'have', 'in', 'any', 'if', 'again', 'no', 'that', 'when', 'same', 'how', 'other', 'which', 'you', "shan't", 'http', 'our', 'after', "let's", 'most', 'such', 'on', "he'll", 'a', 'off', 'i', "she'd", 'yours', "you'll", 'so', "we're", "she's", 'the', "that's", 'having', 'once'])

```




If you want to scale it up for printing, add the scale parameter. Or limit the size of the biggest word with

```
max_font_size:wc = WordCloud(background_color="white", 
                             max_words=2000, 
                             mask=alice_mask,
                             stopwords=stopwords, 
                             scale = 4, 
                             max_font_size = 40)

```

### Documentation
  * [http:\/\/amueller.github.io\/word\_cloud\/](http://amueller.github.io/word_cloud/)
  * [http:\/\/amueller.github.io\/word\_cloud\/generated\/wordcloud.WordCloud.html\#wordcloud.WordCloud](http://amueller.github.io/word_cloud/generated/wordcloud.WordCloud.html#wordcloud.WordCloud)






I took the book 20,000 Leagues Under the Sea and turned it into a wordcloud shaped like an octopus.

This is Frankenstein





Download this masked.py file and upload it to your pythonanywhere account

[https:\/\/goo.gl\/a55HvX](https://goo.gl/a55HvX)

Click on masked.py to open it

This was written for the Alice example. Change

* alice.txt -&gt; your text file
* alice\_mask.png -&gt; your black\/white image
* alice.png -&gt; what you want to name your word cloud

Click on the blue &gt;&gt;&gt; in the top right corner to run it

