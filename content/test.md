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

option 1

</div>
<div class="rngopt">

option 2

</div>
<div class="rngopt">

option 3

</div>
</div>

testing over! did it work? Maybe, maybe not!

<script>

const elements = document.querySelectorAll(".randomset"); // Select all randblocks

for (const element of elements) {
  const options = element.querySelectorAll(".rngopt");
if (options.length > 0) {
  const randomIndex = Math.floor(Math.random() * options.length);
  options[randomIndex].style.display = "block";
options[randomIndex]..style.backgroundColor = "red";
  }
}

</script>
