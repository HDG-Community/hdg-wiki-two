---
title: Writing Articles for the HDG Guide
date: 2024-11-05T00:00:00+00:00
authors: skoof
draft: false
description: How to contribute to this website, including formatting information! 
weight: 10
params:
  decoration: meta
  sidebar:
    exclude: false
---
Our site is based on Markdown, specifically the [Common Mark](https://spec.commonmark.org/0.31.2/) and [Github-Flavoured Markdown](https://github.github.com/gfm/) specifications. Broadly speaking, this is compatible with tools like [Obsidian](Obsidian.md), although we don't currently have a custom Obsidian theme to preview content as it is written. 

The basic formatting is as follows: 

Headings are denoted with a `#` chracter. So, an H1 (heading level one) is `#`, an H2 is `##`, an H3 is `###` and so-on until H6 (which is just too many headings, some would argue!)

**Bold,** *italicized* and ~~strikethrough~~ text is achieved using `** double asterisks**`,`_underscores (or *single asterisks*)_`, and ``~~tildes~~`` respectively. 

## Quoteblocks
Quoteblocks are handled in a little bit of a special way. Their format is as follows:
>[!LORET]
> This is the content of a quoteblock! As you can see, it comes with a fancy banner on the side! There are actually a few types of fancy banner, which is why the markdown formatting for these are special! 
{link="https://gohugo.io" caption="- Caption"}

The markdown for the above quoteblock is as follows:
```
>[!LORET]
> This is the content of a quoteblock! As you can see, it comes with a fancy banner on the side! There are actually a few types of fancy banner, which is why the markdown formatting for these are special! 
{link="https://gohugo.io" caption="- Caption"}
```

Basically, every quoteblock starts with a `>[!TYPE]` to denote what decoration the quotblock should have. Invalid types produce visual bugs, so best to copy a template and change it from there. 

The content of the quote is preceded by a `>` character then a space. There is no need to inlcude a `>` on each line unless you've used a newline (using ENTER or RETURN). In this case, each newline must have its own `>`. 

Finally, the quoteblock contains some metadata for caption and the link that caption should point to. These are enclosed in curly braces and again much match the specified format. 

### Types of Quoteblocks 
We have the following "types" of decorated quoteblocks:
    

>[!IMPORTANT]
> `[!IMPORTANT]` for Important information. 


> [!NOTE]
> `![NOTE]` for notes 


> [!QUOTATION]
> `![QUOTATION]` For specific references to stories. 


> [!AFFINI]
> `![AFFINI]` for Block quotes from the affini


> [!LORET]
> `![LORET]` for Block quotes from the lorets


> [!QUESTION]
> `![QUESTION]` for questions and 


> [!ANSWER]
> `![ANSWER]` for the matching answer! 


## Image Asides
Image asides are handled with custom shortcodes in Hugo. The syntax is as follows:

### Asides:
```< aside doe_plush "A skoof, doing skoof things" >
    Pictured: One skoof, *skoofing it*. Colourised, 1782. Honk honk honk honk!
< /aside >```


### Full-page images:
```{{< image doe_plush "A skoof, doing skoof things" >}}
    Pictured: One skoof, continuing to *skoof it*. Colourized, 1992.
{{< /image >}}```


# Hiding Pages in the sidebar

``` params:
  decoration: meta
  sidebar:
    exclude: false```
