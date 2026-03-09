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
## testing below this line. which option does it pick?
Who knows. let's ramble to be sure that normal text near the random picker works as expected.

<div class="randomset">
<div class="rngopt">

> [!QUOTATION]
> *“Terran space was increasingly popular for the xenrani people due to their resemblance to a certain prey species from Quani—their homeworld—and Moira and Cinder had always been of the wandering sort. Pair that with their pheromones, and they tended to attract a bit of attention.”*
> 
> **Holly Addler and Fluxom’s [*Be My Valentine*](https://archiveofourown.org/works/72373636/chapters/188449786), Chapter 1**

</div>
<div class="rngopt">

> [!QUOTATION]
> _"It is common knowledge that one cannot, for ethical reasons, rise to disturb a cat who sleeps in one’s lap, Astrid knew. The not-quite-cat currently sleeping in **her** lap, however, had her trapped in a much more physical sense. It was simply too heavy to move."_
> 
> **Promilie's [_Florets of a Feather_](https://archiveofourown.org/works/54477985/chapters/145430536), chapter 4**

</div>
<div class="rngopt">

{{< aside aquatic_themothmuse "An aquatic affini and doll floret pair." >}}
    Art by [themothmuse](https://www.tumblr.com/themothmuse).
{{< /aside >}}

</div>
</div>

testing over! did it work? Maybe, maybe not!

<script>

const elements = document.querySelectorAll(".randomset"); // Select all randblocks

for (const element of elements) {
  const options = element.querySelectorAll(".rngopt");
for (const subelement of options) {
subelement.style.display = "none";
}
if (options.length > 0) {
  const randomIndex = Math.floor(Math.random() * options.length);
  options[randomIndex].style.display = "block";
options[randomIndex].style.backgroundColor = "red";
  }
}

</script>
