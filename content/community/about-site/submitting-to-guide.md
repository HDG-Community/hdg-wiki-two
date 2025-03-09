---
title: Editing the Guide
date: 2024-11-05T00:00:00+00:00
authors: skoof
draft: false
description: Workflow for pushing edits to the HDG Guide
params:
  decoration: meta
  icon: pen
  sidebar:
    exclude: false
---

The full content of the HDG guide is stored using git/github at the [following repository](https://github.com/FlorOps/hdg-wiki-two). The most relevant directory for authors submitting changes is `/content/` which is where all of the site's content is stored as `.md` markdown files (see [[Article-Formatting]]) for more.

The breakdown of the site's directory is as follows: 

## .Github/workflows
This directory is used for publishing internally to GitHub Pages for staging purposes and should not be edited. 

## Archetypes
I actually don't know what this does

## Assets
This is where a mjority of the site's non-text assets are stored. Images are stored under the `/img` subdirectory. When calling an image in a page, Hugo defaults to looking in the `/assets` directory. In other words, to access an image stored as `/assets/img/foo.png`, you call it with the path `/img/foo.png`.

There is also CSS content stored in this directory, the most important of which is `custom.css`. This file contains the majority of cosmetic alterations to the site. There are also css files for each page decoration which is loaded when `params: decoration:` is set in a page's frontmatter.  

## Content 
This is the primary directory for all content on the guide. The home page is labelled `_index.md`. All `.md` files in this directory will render as pages by default. All subdirectories under `/content` are collections of pages, sorted by theme and function. Each collection of pages must have its own `_index.html` file which will serve as the landing page for that collection. Markdown files in subdirectories will appear as child pages of that subdirectory's index. 

## Layouts
This is where the Hugo layouts that create the guide are stored as `html` files. It includes partials and shortcodes. **TODO:** Where to read more about shortcodes and partials? 

## Public
This folder is automatically generated(?) on page build and should not be touched. 

## Resources 
This folder is automatically generated(?) on page build and should not be touched. 

## Static
This is the other directory where "static" content can be served. It is different from `/assets/` in that it is not "touched" by Hugo in the render pipeline, meaning that is accessible "as-is" from the site's root. **TODO:** Is this actually true? 

The most useful directory under `/static` is `/fonts`, which stores the site's fonts. The site's favicon is also stored in this directory. 

## Themes
`/themes` is a collection of git submodules that are used to "theme" the guide. Currently the only active theme is Hextra. The Hextra submodule contains a full copy of every asset needed to build the HDG guide. When Hugo detects a file in the Guide's directory in the same path as a file in Hextra's file structure, it automatically builds using the Guide's version of the file instead, enabling custom layouts without modifying the underlying theme. 

It is important that the Hextra submodule not be updated by accident, as versions past v0.8.6 include breaking changes to the site's quoteblock layouts. 

## Hugo.yaml
This is the file where sitewide configuration options can be set. 

## Misc 

### .envrc

### .gitignore
This is a text file containing a list of paths on any one local machine to ignore when pushing to the git repo. 
### .gitmodules
This is a text file containing a list of git submodules
### .hugo_build.lock

### flake.nix

### go.mod

### go.sum

### README.md