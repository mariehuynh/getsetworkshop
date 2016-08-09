#Running the example

You will need to copy these files to your server.

 * masked.py
 * alice\_mask.png
 * alice.txt

There are several ways to do this.  

#### Nerd Level 0 - Download and upload the files.


#### Nerd Level 1 - command line: cURL
cURL is the command line tool for getting or sending files via URL syntax.  It was first released in 1997 and still has stable releases in 2016 because it's super useful.  As with most command line tools, it's designed to do one thing and do it well.  

Suppose I want to grab the homepage of my website, mariehuynh.com:

```
curl www.mariehuynh.com

```
If you actually do this, it will print out the source code of that page on your screen.  Not a great way to look at HTML, but fine if you just want to see what's there.  Most of the time, you'll probably want to have it output to a file.  That's what the -O flag is for.  

```
curl -O https://raw.githubusercontent.com/amueller/word_cloud/master/examples/masked.py
```

This will effectively download the file and save it as masked.py for you.  For more flag options, [check out the manual.](https://curl.haxx.se/docs/manpage.html)

#### Nerd Level 2 - command line: git
This is left as an exercise for the reader



