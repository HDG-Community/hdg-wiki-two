---
title: The Test One
date: 2024-11-05T00:00:00+00:00
authors: HDG Wiki Team
draft: false
description: Test
Params:
  icon: "question"
  decoration: meta
weight: 1
---
## this is where we test to make sure this works.

Who knows. let's ramble to be sure that normal text near the random picker works as expected. 

<div class="randomset"> 
<div class="rngopt"> 

option 1 

</div> 
<div class="rngopt"> 

option 2 

</div> 
<div class="rngopt"> 

option 3 
</div> 
</div> 

This is another static line. Yay!

<div class="randomset"> 
<div class="rngopt"> 

> [!QUOTATION]
> _"This is the first quote."_
> 
> **Somebody's [_Story_](https://archiveofourown.org/works/54477985/chapters/145430536) chapter 1**

</div> 
<div class="rngopt"> 

> [!QUOTATION]
> _"This is the second quote."_
> 
> _"it has more lines."_
> 
> **Somebody's [_Story_](https://archiveofourown.org/works/54477985/chapters/145430536) chapter 2**

</div> 
<div class="rngopt"> 

> [!QUOTATION]
> _"option three."_
> 
> **Somebody's [_Story_](https://archiveofourown.org/works/54477985/chapters/145430536) chapter 3**
</div> 
</div> 

This is static text. article here, yadda

### a line to make the image testing look better

<div class="randomset"> 
<div class="rngopt"> 

{{< aside khetari_stylized_promilie "A khetari looks behind herself towards the camera with a mischievous smile. She has a collar and a flower just below her tailfan." left >}}
    A mischievous khetari floret. option 1.
    Art by Promilie.
{{< /aside >}}

</div> 
<div class="rngopt"> 

{{< aside khetari_m_f_promilie "Two khetari smile towards the camera. The female khetari's coloration is various shades of orange and brown. The male khetari's coloration is purple and white." left >}}
    A pair of female and male khetari showing off their differences in plumage. option 2.
    Art by Promilie.
{{< /aside >}}

</div> 
</div> 


Filling space here, yet again.

Hi, Hello.

I cannot put into words how excited I am about this concept.

### dividing again.

<p> we should be able to randomize a single word in sentences as well, even multiple times per paragraoh. for example: <span class="randomset"><span class="rngopt">one!</span><span class="rngopt">two!</span><span class="rngopt">three!</span><span class="rngopt">four!</span></span> <span class="randomset"><span class="rngopt">one!</span><span class="rngopt">two!</span><span class="rngopt">three!</span><span class="rngopt">four!</span></span></p>


<script>

const elements = document.querySelectorAll(".randomset"); // Select all randblocks

for (const element of elements) {
  const options = element.querySelectorAll(".rngopt");
for (const subelement of options) {
subelement.style.display = "none";
}
if (options.length > 0) {
  const randomIndex = Math.floor(Math.random() * options.length);
if (tagName === 'span') {
  options[randomIndex].style.display = "inline";
  }
else
{
  options[randomIndex].style.display = "block";
  }
}

</script>
