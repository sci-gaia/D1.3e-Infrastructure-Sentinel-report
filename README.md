<!-- [![Build Status](https://travis-ci.org/sci-gaia/D2.3UserForum.svg?branch=master)](https://travis-ci.org/sci-gaia/D2.3UserForum) [![Code Climate](https://codeclimate.com/github/sci-gaia/D2.3UserForum/badges/gpa.svg)](https://codeclimate.com/github/sci-gaia/D2.3UserForum) [![Issue Count](https://codeclimate.com/github/sci-gaia/D2.3UserForum/badges/issue_count.svg)](https://codeclimate.com/github/sci-gaia/D2.3UserForum) -->

# D1.3e-Infrastructure-Sentinel-report

Deliverable 1.3 - e-Infrastructure Sentinel Report for the Sci-GaIA project http://www.sci-gaia.eu/deliverables/

Note :

  * The main file is : **D1.3-e-Infra-Sentinel-Report.md**. This is used to build the other formats (pdf, odt - [see below](#building-the-document))
  * **Looking for PDF / DOC ?** If you want a pre-compiled document to read, in a `.pdf` or `.odt` file, see the [Github Releases](https://github.com/sci-gaia/D1.3e-Infrastructure-Sentinel-report/releases). This contains  the latest succesful build of the document.
  * **Comments** ? If you would to comment on the document, please open a topic on the forum under the [topic](http://discourse.sci-gaia.eu/t/d1-3-e-infrastructure-sentinel-report/2566)
  * **Errors** ? [Open an issue](../issues/new)
  * **Contributions** ? If you would like to contribute to the document, please fork the repository and send your suggestions in a pull request.
    * **I want to send you contributions in some otherway** - whatever works for you, friend - send it over.  


#  Building the document

The document is built automatically on [Travis](https://travis-ci.org/sci-gaia/. See the [Travis file](.travis.yml) to see what is done in detail. The following steps are done :

  1. Convert images where necessary
  2. Conduct spell check
  3. Push release on successful build


## Pandoc

We use pandoc to create the document :

```
pandoc -S --filter pandoc-fignos \
--filter --filter pandoc-tablenos \
--variable mainfont="Lato" \
--variable sansfont="Lato" \
--variable monofont="Roboto" \
--variable fontsize=12pt \
--variable version=1.17.2 \
--reference-odt="deliverable-template.ott" \
--number-sections \
--toc \
--from markdown+implicit_figures+table_captions+pipe_tables+footnotes+inline_notes \
D2.3-UF.md  -o D2.3-UF.odt
```

You will need the filters available in your distribution of pandoc.

#  Spell checking

We use aspell to
`cat D2.3-UF.md  | aspell --pipe --encoding utf-8|grep -v \* | uniq`

# Releases

Versions are considered internal unless they have a major version number (_e.g._ `v1.0.0`).
