---
author: serine
timestamp: 2019.07.20_19:04:13_AEST
---

I probably can't commit this into git, just in case there are some copyright issues, but this
is an amazing resource. I'll take a copy just in case the website goes down

```
wget -O bib.html http://bib-it.sourceforge.net/help/fieldsAndEntryTypes.php#TOP
pandoc -f html -t markdown -o bib.md bib.html
```
