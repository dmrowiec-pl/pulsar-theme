
An h1 header
===

Paragraphs are separated by a blank line.

2nd paragraph.  _khkj_ __khghg__
*Italic*, **bold**, ***kjhkjh*** and ``monospace``. Itemized lists.


Another code: `const my_var = result_func();`.
Another code: `sudo apt-get install nice-package`.

### My Great Heading {#custom-id}

[Heading IDs](#heading-ids)

First Term
: This is the definition of the first term.

Second Term
: This is one definition of the second term.
: This is another definition of the second


~~The world is flat.~~ We now know that the world is round.

- [x] Write the press release
- [] Update the website
- [ ] Contact the media


Gone camping! :tent: Be back soon.

That is so funny! :joy:

I need to highlight these ==very important words==.

H~2~O
X^2^


look like:

  * this one
  * that one
  * the other one

    + hkjhkjh

    - khkjhj



1. first item
2. second item
3. third item


1. first item
   * that one
   * that one
2. second item
    * that one
3. third item




Note that --- not considering the asterisk --- the actual text
content starts at 4-columns in.

> Block quotes **sdfsdfdf** are
> written like so.
>
> >They can span multiple paragraphs,
> if you like.

Use 3 dashes for an em-dash. Use 2 dashes for ranges (ex., "it's all

    sldkfjslkdfjsd
    dfsdfsdfsdf


in chapters 12--14"). Three dots ... will be converted to an ellipsis.
Unicode is supported. ☺

<html>
    <head>
        <title>Tesdfsdfsdf sdf sst</title>
    </head>
    <div sdf="sdlfksjf">sdfdfsfs</div>
</html>


An h2 header
--------------------

Here's a numbered list:
Note again how the actual text starts at 4 columns in (4 characters
from the left side). Here's a code sample:

    # Let me re-iterate ...
    for i in 1 .. 10 { do-something(i) }

As you probably guessed, indented 4 spaces. By the way, instead of
indenting the block, you can use delimited blocks, if you like:

~~~
define foobar() {
    print "Welcome to flavor country!";
}
~~~

(which makes copying & pasting easier). You can optionally mark the

*******

---

_________________


delimited block for Pandoc to syntax highlight it:

~~~python
import time
# Quick, count to ten!
for i in range(10):
    # (but not *too* quick)
    time.sleep(0.5)
    print i
~~~



### An h3 header ###

Now a nested list:

 1. First, get these ingredients:

      * carrots
      * celery
      * lentils

 2. Boil some water.

 3. Dump everything in the pot and follow
    this algorithm:

        find wooden spoon
        uncover pot
        stir
        cover pot
        balance wooden spoon precariously on pot handle
        wait 10 minutes
        goto first step (or shut off burner when done)

    Do not bump wooden spoon or it will fall.

Notice again how text always lines up on 4-space indents (including


My favorite search engine is [Duck Duck Go](https://duckduckgo.com).


that last line which continues item 3 above).

make below punctuation gray...
<https://www.markdownguide.org>

Here's a link to [a website](http://foo.bar "sdfsdfsdf"), to a 
[local doc](local-doc.html), and to a [section heading in the current doc](#an-h2-header). Here's a footnote [^1].

[^1]: Footnote text goes here.


[1]: https://en.wikipedia.org/wiki/Hobbit#Lifestyle
[1]: https://en.wikipedia.org/wiki/Hobbit#Lifestyle "Hobbit lifestyles"
[1]: https://en.wikipedia.org/wiki/Hobbit#Lifestyle 'Hobbit lifestyles'
[1]: https://en.wikipedia.org/wiki/Hobbit#Lifestyle (Hobbit lifestyles)
[1]: <https://en.wikipedia.org/wiki/Hobbit#Lifestyle> "Hobbit lifestyles"
[1]: <https://en.wikipedia.org/wiki/Hobbit#Lifestyle> 'Hobbit lifestyles'
[1]: <https://en.wikipedia.org/wiki/Hobbit#Lifestyle> (Hobbit lifestyles)

\* Without the backslash, this would be a bullet in an unordered list.

This **word** is bold. This <em>word</em> is italic.

Tables can look like this:

size  material      color
----  ------------  ------------
9     leather       brown
10    hemp canvas   natural
11    glass         transparent

Table: Shoes, their sizes, and what they're made of
(The above is the caption for the table.) Pandoc also supports multi-line tables:

--------  -----------------------
keyword   text
--------  -----------------------
red       Sunsets, apples, and
          other red or reddish
          things.

green     Leaves, grass, frogs
          and other things it's
          not easy being.
--------  -----------------------
:----:
A ho:----:rizontal rule follows.

| Syntax      | Description |
| ----------- | ----------- |
| Header      | Title       |
| Paragraph   | Text        |


A horizontal rule follows.

***

Here's a definition list:

apples
  : Good for making applesauce.
oranges
  : Citrus!
tomatoes
  : There's no "e" in tomatoe.

Again, text is indented 4 spaces. (Put a blank line between each
term/definition pair to spread things out more.)

Here's a "line block":

| Line one
|   Line too
| Line tree

and images can be specified like so:

![example image](example-image.jpg "An exemplary image")
[example image](example-image.jpg "An exemplary image")
Inline math equations go in like so: $\omega = d\phi / dt$. Display
math should get its own line and be put in in double-dollarsigns:

$$I = \int \rho R^{2} dV$$

And note that you can backslash-escape any punctuation characters
which you wish to be displayed literally, ex.: \`foo\`, \*bar\*, etc.

[hobbit-hole] [1]
[hobbit-hole] [1]
