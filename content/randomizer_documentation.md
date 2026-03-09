---
title: Randomizer documentation
date: 2026-03-05T00:00:00+00:00
authors: HDG Wiki Team (Sheepwave)
draft: false
description: A hidden explanation of how to use the randomizer
params:
  decoration: meta
  sidebar:
    exclude: true
---

Hello there. this probably will move later, but it is useful to put it here for now. In keeping with the philosophy of featuring as many stories, quotes, citations, and art as possible, this will allow us to add more stuff to pages without utterly overwhelming a reader. they will likely not even be aware of the randomization occuring, and in future we may shift the function to reroll once per day/hour/etc rather than on every page refresh.

## how to use it
the very first thing that you must do to make the randomizer work, currently, is to put this shortcode at the end of your .md:  
`{{</* randomroll */>}}`  
this adds the javastript to run the code to the page. (this will probably be changed later so that it runs automatically.)

## Simple cases
This script is quite powerful and flexible, and can do some really cool things within span tags. however, we don't need that flexibility in the vast majority of cases because we just want to randomize a single object- usually a pull quote, image, or list item.

Each of those can be implemented in your .md like so:

## list item (bulleted)
to run the randomizer on a list of bullets, just enclose them in a **div** with the class **"randomlist"** like so:

```
<div class="randomlist">

- Class-C example story: [All You Need](https://hdg.wiki/story-hub/)
- Class-C example story: [Happiness](https://hdg.wiki/story-hub/)
- Class-C example story: [Love Doesn't Ask For Permission](https://hdg.wiki/story-hub/)

</div>
```

That produces this:

<div class="randomlist">

- Class-C example story: [All You Need](https://hdg.wiki/story-hub/)
- Class-C example story: [Happiness](https://hdg.wiki/story-hub/)
- Class-C example story: [Love Doesn't Ask For Permission](https://hdg.wiki/story-hub/)

</div>

## pull quote
to run the randomizer on a pull quote, just enclose them in a **div** with the class **"randomquote"** like so:

```
<div class="randomquote">

> [!QUOTATION]
> _"This is the first quote."_
> 
> **Somebody's [Story](https://hdg.wiki/story-hub/)**

> [!QUOTATION]
> _"This is the second quote."_
> 
> _"it has more lines."_
> 
> **Somebody's [Story](https://hdg.wiki/story-hub/)**

> [!QUOTATION]
> _"Three quotes. we can really do as many as we want, actually."_
> 
> **Somebody's [Story](https://hdg.wiki/story-hub/)**

</div>
```

This produces this:

<div class="randomquote">

> [!QUOTATION]
> _"This is the first quote."_
> 
> **Somebody's [Story](https://hdg.wiki/story-hub/)**

> [!QUOTATION]
> _"This is the second quote."_
> 
> _"it has more lines."_
> 
> **Somebody's [Story](https://hdg.wiki/story-hub/)**

> [!QUOTATION]
> _"Three quotes. we can really do as many as we want, actually."_
> 
> **Somebody's [Story](https://hdg.wiki/story-hub/)**

</div>

## image
to run the randomizer on a list of bullets, just enclose them in a **div** with the class **"randomimage"** like so:
```
<div class="randomimage">
  
{{</* aside buddybeeple_garbagewitchy "A soft paint style portrait of a beeple plushie with yellow and black fuzzy stripes and blue eyes." >}} Art by [Garbagewitchy](https://bsky.app/profile/garbagewitchy.bsky.social). {{</* /aside */>}}

{{</* aside beeple_plastic "A green-coated beeple with red eyes." */>}} Art by [Plastic](https://bsky.app/profile/plastic-doodles.bsky.social). {{</* /aside */>}}

</div>
```

that produces this:

<div class="randomimage">
  
{{< aside buddybeeple_garbagewitchy "A soft paint style portrait of a beeple plushie with yellow and black fuzzy stripes and blue eyes." >}} Art by [Garbagewitchy](https://bsky.app/profile/garbagewitchy.bsky.social). {{< /aside >}}

{{< aside beeple_plastic "A green-coated beeple with red eyes." >}} Art by [Plastic](https://bsky.app/profile/plastic-doodles.bsky.social). {{< /aside >}}

</div>

Note that this works for all image shortcodes, which are currently image, aside, and mini.


## freeform 
There are applications where more fine detail is wanted, and at the cost of being way more work to set up it can do some very cool things. for this, we not only need to specify a container with the class **"randomset"** but also mark what it is randomizing by using the class **"rngopt"** (random number generator option)

using this, we can do things like randomize multiple individual parts inside a paragraph.
```
<p> we should be able to randomize a single word in sentences as well, even multiple times per paragraph. for example: <span class="randomset"><span class="rngopt">one!</span><span class="rngopt">two!</span><span class="rngopt">three!</span><span class="rngopt">four!</span></span> <span class="randomset"><span class="rngopt">one!</span><span class="rngopt">two!</span><span class="rngopt">three!</span><span class="rngopt">four!</span></span></p>
```

which produces:

<p> we should be able to randomize a single word in sentences as well, even multiple times per paragraph. for example: <span class="randomset"><span class="rngopt">one!</span><span class="rngopt">two!</span><span class="rngopt">three!</span><span class="rngopt">four!</span></span> <span class="randomset"><span class="rngopt">one!</span><span class="rngopt">two!</span><span class="rngopt">three!</span><span class="rngopt">four!</span></span></p>


We can also just mark large multi paragraph sections as a single random roll, or arbitrarily mix any desired subsections, shortcodes, etc. Will we ever need this? probably not, but we have it if we do.

```
<div class="randomset"> 
<div class="rngopt"> 

This is the first result.

- this bullet isn't in the other one.

It has multiple paragraphs.

</div> 
<div class="rngopt"> 

This is the second result. it has a quote in it that the other doesn't!

> look at this quote line! woah.

</div>
</div>
```

produces:

<div class="randomset"> 
<div class="rngopt"> 

This is the first result.

- this bullet isn't in the other one.

It has multiple paragraphs.

</div> 
<div class="rngopt"> 

This is the second result. it has a quote in it that the other doesn't!

> look at this quote line! woah.

</div>
</div>


> [!QUOTATION]
> _"This is the second quote."_
> 
> _"it has more lines."_
> 
> **Somebody's [_Story_](https://archiveofourown.org/works/54477985/chapters/145430536) chapter 2**

</div> 





## coming later:
an option to make it so it reactivates N options, rather than just one.


By Sheepwave

{{< randomroll >}}
