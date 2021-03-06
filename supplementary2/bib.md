[Bib]{.Bib}-[it]{.it}
=====================

A [Bib]{.Bib}T[e]{.TeX}X manager.
---------------------------------

  --------------------------------- ------------------------------------------------------------------
  [Help index](index.php){.index}   [[Bib]{.Bib}-[it]{.it} Homepage](http://bib-it.sourceforge.net/)
  --------------------------------- ------------------------------------------------------------------

[]{#TOP}

### BibTeX Entry and Field Types

-   [Entries](#Entries)
    -   [article](#article)
    -   [book](#book)
    -   [booklet](#booklet)
    -   [inbook](#inbook)
    -   [incollection](#incollection)
    -   [inproceedings](#inproceedings)
    -   [manual](#manual)
    -   [mastersthesis](#mastersthesis)
    -   [misc](#misc)
    -   [phdthesis](#phdthesis)
    -   [proceedings](#proceedings)
    -   [techreport](#techreport)
    -   [unpublished](#unpublished)
-   [Fields](#Fields)
    -   [address](#address)
    -   [annote](#annote)
    -   [author](#author)
    -   [booktitle](#booktitle)
    -   [chapter](#chapter)
    -   [crossref](#crossref)
    -   [edition](#edition)
    -   [editor](#editor)
    -   [howpublished](#howpublished)
    -   [institution](#institution)
    -   [journal](#journal)
    -   [key](#key)
    -   [month](#month)
    -   [note](#note)
    -   [number](#number)
    -   [organization](#organization)
    -   [pages](#pages)
    -   [publisher](#publisher)
    -   [school](#school)
    -   [series](#series)
    -   [title](#title)
    -   [type](#type)
    -   [volume](#volume)
    -   [year](#year)

[]{#Entries}

#### Entries

[Up](#TOP "up")\

+-----------------------------------+-----------------------------------+
| []{#article} [article](#TOP "up") | An article from a journal or      |
|                                   | magazine.                         |
|                                   |                                   |
|                                   | Required fields: author, title,   |
|                                   | journal, year.                    |
|                                   |                                   |
|                                   | Optional fields: volume, number,  |
|                                   | pages, month, note.               |
+-----------------------------------+-----------------------------------+
| []{#book} [book](#TOP "up")       | A book with an explicit           |
|                                   | publisher.                        |
|                                   |                                   |
|                                   | Required fields: author or        |
|                                   | editor, title, publisher, year.   |
|                                   |                                   |
|                                   | Optional fields: volume or        |
|                                   | number, series, address, edition, |
|                                   | month, note.                      |
+-----------------------------------+-----------------------------------+
| []{#booklet} [booklet](#TOP "up") | A work that is printed and bound, |
|                                   | but without a named publisher or  |
|                                   | sponsoring institution.           |
|                                   |                                   |
|                                   | Required: title.                  |
|                                   |                                   |
|                                   | Optional: author, howpublished,   |
|                                   | address, month, year, note.       |
+-----------------------------------+-----------------------------------+
| []{#inbook} [inbook](#TOP "up")   | A part of a book, e.g., a         |
|                                   | chpater, section, or whatever     |
|                                   | and/or a range of pages.          |
|                                   |                                   |
|                                   | Required fields: author or        |
|                                   | editor, title, chapter and/or     |
|                                   | pages, publisher, year.           |
|                                   |                                   |
|                                   | Optional fields: volume or        |
|                                   | number, series, type, address,    |
|                                   | edition, month, note.             |
+-----------------------------------+-----------------------------------+
| []{#incollection}                 | A part of a book having its own   |
| [incollection](#TOP "up")         | title.                            |
|                                   |                                   |
|                                   | Required fields: author, title,   |
|                                   | booktitle, publisher, year.       |
|                                   |                                   |
|                                   | Optional fields: editor, volume   |
|                                   | or number, series, type, chapter, |
|                                   | pages, address, edition, month,   |
|                                   | note.                             |
+-----------------------------------+-----------------------------------+
| []{#inproceedings}                | An article in a conference        |
| [inproceedings](#TOP "up")        | proceedings.                      |
|                                   |                                   |
|                                   | Required fields: author, title,   |
|                                   | booktitle, year.                  |
|                                   |                                   |
|                                   | Optional fields: editor, volume   |
|                                   | or number, series, pages,         |
|                                   | address, month, organization,     |
|                                   | publisher, note.                  |
+-----------------------------------+-----------------------------------+
| []{#manual} [manual](#TOP "up")   | Technical documentation.          |
|                                   |                                   |
|                                   | Required field: title.            |
|                                   |                                   |
|                                   | Optional fields: author,          |
|                                   | organization, address, edition,   |
|                                   | month, year, note.                |
+-----------------------------------+-----------------------------------+
| []{#mastersthesis}                | A master\'s thesis.               |
| [mastersthesis](#TOP "up")        |                                   |
|                                   | Required fields: author, title,   |
|                                   | school, year.                     |
|                                   |                                   |
|                                   | Optional fields: type, address,   |
|                                   | month, note.                      |
+-----------------------------------+-----------------------------------+
| []{#misc} [misc](#TOP "up")       | Use this type when nothing else   |
|                                   | fits. A warning will be issued if |
|                                   | all optional fields are empty     |
|                                   | (i.e., the entire entry is empty  |
|                                   | or has only ignored fields).      |
|                                   |                                   |
|                                   | Required fields: none.            |
|                                   |                                   |
|                                   | Optional fields: author, title,   |
|                                   | howpublished, month, year, note.  |
+-----------------------------------+-----------------------------------+
| []{#phdthesis}                    | A Ph.D. thesis.                   |
| [phdthesis](#TOP "up")            |                                   |
|                                   | Required fields: author, title,   |
|                                   | school, year.                     |
|                                   |                                   |
|                                   | Optional fields: type, address,   |
|                                   | month, note.                      |
+-----------------------------------+-----------------------------------+
| []{#proceedings}                  | Conference proceedings.           |
| [proceedings](#TOP "up")          |                                   |
|                                   | Required fields: title, year.     |
|                                   |                                   |
|                                   | Optional fields: editor, volume   |
|                                   | or number, series, address,       |
|                                   | publisher, note, month,           |
|                                   | organization.                     |
+-----------------------------------+-----------------------------------+
| []{#techreport}                   | A report published by a school or |
| [techreport](#TOP "up")           | other institution, usually        |
|                                   | numbered within a series.         |
|                                   |                                   |
|                                   | Required fields: author, title,   |
|                                   | institution, year.                |
|                                   |                                   |
|                                   | Optional fields: type, number,    |
|                                   | address, month, note.             |
+-----------------------------------+-----------------------------------+
| []{#unpublished}                  | A document having an author and   |
| [unpublished](#TOP "up")          | title, but not formally           |
|                                   | published.                        |
|                                   |                                   |
|                                   | Required fields: author, title,   |
|                                   | note.                             |
|                                   |                                   |
|                                   | Optional fields: month, year.     |
+-----------------------------------+-----------------------------------+

[]{#Fields}

#### Fields

[Up](#TOP "up")\

+-----------------------------------+-----------------------------------+
| []{#address} [address](#TOP "up") | Usually the address of the        |
|                                   | publisher or other institution.   |
|                                   |                                   |
|                                   | For major publishing houses,\     |
|                                   | just give the city. For small     |
|                                   | publishers, specifying the        |
|                                   | complete address might help the   |
|                                   | reader.                           |
+-----------------------------------+-----------------------------------+
| []{#annote} [annote](#TOP "up")   | An annotation.                    |
|                                   |                                   |
|                                   | Not used by the standard          |
|                                   | bibliography styles, but used by  |
|                                   | others that produce an annotated  |
|                                   | bibliography (e.g., annote). The  |
|                                   | field starts a new sentence and   |
|                                   | hence the first word should be    |
|                                   | capitalized.                      |
+-----------------------------------+-----------------------------------+
| []{#author} [author](#TOP "up")   | The name(s) of the author(s), in  |
|                                   | BibTeX name format.               |
+-----------------------------------+-----------------------------------+
| []{#booktitle}                    | Title of a book, part of which is |
| [booktitle](#TOP "up")            | being cited.                      |
|                                   |                                   |
|                                   | For book entries use the title    |
|                                   | field                             |
+-----------------------------------+-----------------------------------+
| []{#chapter} [chapter](#TOP "up") | A chapter (or section or          |
|                                   | whatever) number.                 |
+-----------------------------------+-----------------------------------+
| []{#crossref}                     | The database key of the entry     |
| [crossref](#TOP "up")             | being cross-referenced            |
+-----------------------------------+-----------------------------------+
| []{#edition} [edition](#TOP "up") | The edition of a book (e.g.,      |
|                                   | \"Second\").                      |
|                                   |                                   |
|                                   | This should be an ordinal, and    |
|                                   | should have the first letter      |
|                                   | capitalized, as shown above; the  |
|                                   | standard styles convert to        |
|                                   | lowercase when necessary.         |
+-----------------------------------+-----------------------------------+
| []{#editor} [editor](#TOP "up")   | Name(s) of editor(s), in [BibTeX  |
|                                   | name format](todo).               |
|                                   |                                   |
|                                   | If there is also an author field, |
|                                   | then the editor field gives the   |
|                                   | editor of the book or collection  |
|                                   | in which the reference appears.   |
+-----------------------------------+-----------------------------------+
| []{#howpublished}                 | How something strange has been    |
| [howpublished](#TOP "up")         | published.                        |
+-----------------------------------+-----------------------------------+
| []{#institution}                  | Institutuion sponsoring a         |
| [institution](#TOP "up")          | technical report.                 |
+-----------------------------------+-----------------------------------+
| []{#journal} [journal](#TOP "up") | Journal name. Abbrevations are    |
|                                   | provided for many journals.       |
+-----------------------------------+-----------------------------------+
| []{#key} [key](#TOP "up")         | Used for alphabetizing,           |
|                                   | cross-referencing, and creating a |
|                                   | label when the author and editor  |
|                                   | information is missing.           |
|                                   |                                   |
|                                   | This field should not be confused |
|                                   | with the key that appears in the  |
|                                   | \\cite command and at the         |
|                                   | beginning of the database entry.  |
+-----------------------------------+-----------------------------------+
| []{#month} [month](#TOP "up")     | The month in which the work was   |
|                                   | published or, for an unpublished  |
|                                   | work, in which it was written.    |
|                                   |                                   |
|                                   | For reasons of consistency the    |
|                                   | standard three-letter             |
|                                   | abbreviations (jan, feb, mar,     |
|                                   | etc.) should be used.             |
+-----------------------------------+-----------------------------------+
| []{#note} [note](#TOP "up")       | Any additional information that   |
|                                   | can help the reader.              |
+-----------------------------------+-----------------------------------+
| []{#number} [number](#TOP "up")   | The number of a journal,          |
|                                   | magazine, technical report, or    |
|                                   | work in a series.                 |
|                                   |                                   |
|                                   | An issue of a journal or magazine |
|                                   | is usually identified by its      |
|                                   | volume and number; a technical    |
|                                   | report normally has a number; and |
|                                   | sometimes books in a named series |
|                                   | carry numbers.                    |
+-----------------------------------+-----------------------------------+
| []{#organization}                 | The organization that sponsors a  |
| [organization](#TOP "up")         | conference or that publishes a    |
|                                   | manual.                           |
+-----------------------------------+-----------------------------------+
| []{#pages} [pages](#TOP "up")     | One or more page numbers or range |
|                                   | of numbers.                       |
|                                   |                                   |
|                                   | (e.g., 42-111 or 7,41, 73-97 or   |
|                                   | 43+, where the \'+\' indicates    |
|                                   | pages that do not form a simple   |
|                                   | range)                            |
+-----------------------------------+-----------------------------------+
| []{#publisher}                    | The publisher\'s name.            |
| [publisher](#TOP "up")            |                                   |
+-----------------------------------+-----------------------------------+
| []{#school} [school](#TOP "up")   | The name of the school where the  |
|                                   | thesis was written.               |
+-----------------------------------+-----------------------------------+
| []{#series} [series](#TOP "up")   | The name of a series or set of    |
|                                   | books.                            |
|                                   |                                   |
|                                   | When citing an entire book, the   |
|                                   | title field gives its title and   |
|                                   | an optional series field gives    |
|                                   | the name of a series or           |
|                                   | multivolume set in which the book |
|                                   | is published.                     |
+-----------------------------------+-----------------------------------+
| []{#title} [title](#TOP "up")     | The work\'s title, typed as       |
|                                   | explained in                      |
+-----------------------------------+-----------------------------------+
| []{#type} [type](#TOP "up")       | The type of a technical           |
|                                   | report(e.g., \"Research Note\").  |
|                                   |                                   |
|                                   | This name is used instead of the  |
|                                   | default \"Technical Report\". For |
|                                   | the entry type phdthesis you      |
|                                   | could use the term \"Ph.D.        |
|                                   | dissertation\" by specifying:     |
|                                   | type = \"{Ph.D.} dissertation\".  |
|                                   | Similarly, for the inbook and     |
|                                   | incollection entry types you can  |
|                                   | get \"section 1.2\" instead of    |
|                                   | the default \"chapter 1.2\" with  |
|                                   | chapter = \"1.2\" and type =      |
|                                   | \"Section\".                      |
+-----------------------------------+-----------------------------------+
| []{#volume} [volume](#TOP "up")   | The volume of a journal or        |
|                                   | multivolume book.                 |
+-----------------------------------+-----------------------------------+
| []{#year} [year](#TOP "up")       | The year of publication or, for   |
|                                   | an unpublished work, the year it  |
|                                   | was written.                      |
|                                   |                                   |
|                                   | Generally, it should consist of   |
|                                   | four numerals, such as 1984,      |
|                                   | although the standard styles can  |
|                                   | handle any year whose last four   |
|                                   | nonpunctuation characters are     |
|                                   | numerals, such as \"about 1984\". |
+-----------------------------------+-----------------------------------+

© 2006-2008 Guro Bu, Geir Engen, Lubomir Mihailov, Stein Strindhaug, &
Zian Choy.

[![SourceForge.net](http://sflogo.sourceforge.net/sflogo.php?group_id=169213&type=2 "Hosted at SourceForge.net"){width="125"
height="37"}](http://sourceforge.net)\
[![Valid HTML 4.01
Transitional](http://www.w3.org/Icons/valid-html401 "This page is Valid HTML 4.01 Transitional"){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
