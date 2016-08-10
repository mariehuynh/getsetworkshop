# Getting the Files
You will need to copy these files to your server.

 * masked.py

 * alice\_mask.png

 * alice.txt

There are several ways to do this.  

#### Nerd Level 0 - Download and upload the files

For the image, right click on the image, choose "Save Image As...", then save it somewhere you can find it.  

For the code and book, you can save via the File menu.  You can also press CTRL+S (⌘-S on Mac).

Upload by clicking on the upload button on pythonanywhere's Files page.

#### Nerd Level 1 - command line: cURL

cURL is the command line tool for getting or sending files via URLs.  It was first released in 1997 and still has stable releases in 2016 because it's super useful.  As with most command line tools, it's designed to do one thing and do it well.  

Suppose I want to grab the homepage of my website, mariehuynh.com:

```

curl www.mariehuynh.com

```

If you actually do this, it will print out the source code of that page on your screen.  Not a great way to look at HTML, but fine if you just want to see what's there.  Most of the time, you'll probably want to have it output to a file with the same name.  That's what the -O flag is for.  

```

curl -O https://raw.githubusercontent.com/mariehuynh/word_cloud/master/examples/masked.py

```

This will effectively download the file and save it as masked.py for you.  Try it with the image files too.

For more power user flag options, [check out the curl manual.](https://curl.haxx.se/docs/manpage.html)

#### Nerd Level 2 - command line: git

This is left as an exercise for the reader

