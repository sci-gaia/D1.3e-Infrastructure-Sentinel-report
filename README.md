[![Build Status](https://travis-ci.org/sci-gaia/D1.3e-Infrastructure-Sentinel-report.svg?branch=master)](https://travis-ci.org/sci-gaia/D1.3e-Infrastructure-Sentinel-report) [![Code Climate](https://codeclimate.com/github/sci-gaia/D1.3e-Infrastructure-Sentinel-report/badges/gpa.svg)](https://codeclimate.com/github/sci-gaia/D1.3e-Infrastructure-Sentinel-report) [![Issue Count](https://codeclimate.com/github/sci-gaia/D1.3e-Infrastructure-Sentinel-report/badges/issue_count.svg)](https://codeclimate.com/github/sci-gaia/D1.3e-Infrastructure-Sentinel-report)


# D1.3e-Infrastructure-Sentinel-report

Deliverable 1.3 - e-Infrastructure Sentinel Report for the Sci-GaIA project http://www.sci-gaia.eu/deliverables/

Note :

  * The main file is : **D1.3-e-Infra-Sentinel-Report.md**. This is used to build the other formats (pdf, odt - [see below](#building-the-document))
  * **Looking for PDF / DOC ?** If you want a pre-compiled document to read, in a `.pdf` or `.odt` file, see the [Github Releases](https://github.com/sci-gaia/D1.3e-Infrastructure-Sentinel-report/releases). This contains  the latest succesful build of the document.
  * **Comments** ? If you would to comment on the document, please open a topic on the forum under the [topic](http://discourse.sci-gaia.eu/t/d1-3-e-infrastructure-sentinel-report/2566)
  * **Errors** ? [Open an issue](../issues/new)
  * **Contributions** ? If you would like to contribute to the document, please fork the repository and send your suggestions in a pull request.
    * **I want to send you contributions in some other way** - whatever works for you, friend - send it over.  


#  Building the document

[Travis](https://travis-ci.org/sci-gaia/D1.3e-Infrastructure-Sentinel-report) builds the `.odt` and `.pdf` automatically on tagged commits. See the [Travis file](.travis.yml) to see what is done in detail. The following steps are done :

  1. Convert images where necessary
  2. Conduct spell check
  3. Push release on successful build


## Pandoc

We use pandoc to create the document :

```
pandoc -S --filter pandoc-fignos \
--filter pandoc-tablenos \
--variable mainfont="Lato" \
--variable sansfont="Lato" \
--variable monofont="Roboto" \
--variable fontsize=12pt \
--variable version=1.17.2 \
--reference-odt="deliverable-template.ott" \
--number-sections \
--toc \
--from markdown+implicit_figures+table_captions+pipe_tables+footnotes+inline_notes \
D1.3-e-Infra-Sentinel-Report.md  -o D1.3-e-Infra-Sentinel-Report.odt
```

You will need the filters available in your distribution of pandoc.

#  Spell checking

We use aspell to check the spelling of the document with a custom dictionary kept in the repo.

`cat D13-e-Infra-Sentinel-Report.md | aspell --pipe --encoding utf-8|grep -v \* | uniq`

# Releases

Releases follow a numbering convention as follows :

  * **Major versions** _e.g._ `v1.0.0` : Public versions, passed internal review and checking.
  * **Minor versions** _e.g._ `v0.1.0` : Internal releases, awaiting review
  * **Patch versions** _e.g._ `v0.0.1` : Work in progress tags.
 
