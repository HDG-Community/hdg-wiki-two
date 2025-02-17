---
title: Writing Articles for the HDG Guide
date: 2024-11-05T00:00:00+00:00
authors: skoof
draft: false
description: How to contribute to this website, including formatting information! 
weight: 10
params:
  decoration: meta
  icon: pen
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
{link="https://gohugo.io" caption="Caption"}

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
> `![QUESTION]` for questions and... 


> [!ANSWER]
> `![ANSWER]` ...for the matching answer! 

# The Sidebar
The collection of page names on the left of the screen (or in the hamburger menu on mobile) is reffered to as the "sidebar." Generally speaking, it is an automatically-populated list of all pages beneath the current page in the file tree. On the hoome page, this is every page, unless `sidebar: exclude: false` is set in the frontmatter ( see 'Hiding Items From the Sidebar'). 
## Adding Items to the Sidebar
New pages are automatically added to the sidebar upon creation. To add a persistent item (visible on every page) onto the sidebar, add 
```yaml
      sidebar:
        - name: "Page Name"
          pageRef: "/url" 
          weight: [NUMBER]
```

to the `hugo.yaml` file. This will add the link persistently on every page. The "weight" value only pertains to other persistent links, and these links always appear above the automatically generated links for content. 

## Hiding Items from the Sidebar:
To hide a page from the sidebar, you must add 
```yaml
params:
  decoration: meta
  sidebar:
    exclude: false
```
to the frontmatter of the page.

## Sidebar Icons
Sidebar icons are also defined in the frontmatter of pages. When not specified, a default icon is used. The following icons are currently implemented: 

**TODO**

To set a page icon, add 
```yaml
params:
  icon: iconName
```
to the page's frontmatter. 


# Image Asides
Image asides are handled with custom shortcodes in Hugo. The syntax is as follows:

### Asides:
```
< aside doe_plush "A skoof, doing skoof things" >
    Pictured: One skoof, *skoofing it*. Colourised, 1782. Honk honk honk honk!
< /aside >
```

### Full-page images:
```go
{{< image doe_plush "A skoof, doing skoof things" >}}
    Pictured: One skoof, continuing to *skoof it*. Colourized, 1992.
{{< /image >}}
```