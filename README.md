# What is cove?

Cove is my take on a CLI bibtex and pdf organization tool. It draws heavy inspiration from papis and fzf-bibtex, but is selfishly centered on tools I like to use and for my own preferred workflow.

# Features / quick start

- Quickly add records to your repository by running `cove` followed by as many DOI's as you would like, separated by spaces
  - If you have a file of DOI's, you can try `cove (cat file_of_dois)`
  - Duplicate records (as identified by DOI) will not be added
  - Keys are generated as singleauthoryear
    - Non-unique keys are disambiguated by lower case letters *in the order they are added*
    - This prevent breaking references to old records as new ones are added
- Quickly search through records using `cove cite` or `cove title`, which returns either the bibtex key or title of the matching record
  - Searching uses fuzzy matching using fzf and supports colour!
- Link pdfs to records by using `cove link file_to_link.pdf` and selecting the record using fzf
  - Linked pdfs are automatically moved, not copied, to the papers subdirectory
  - Remove pdfs using `cove unlink`
- Search and open pdfs using `cove open`
  - This is also the default behaviour for when no arguments are passed to `cove`

# Installation

Edit the `cove` file and modify the `repo_dir` variable to the directory where you would like to store bibtex records and papers. Make sure this directory exists as well as a subdirectory called papers, if you want to manage pdfs with cove as well.

Check that `local_bin_folder` variable in the Makefile points to a directory that is part of your `$PATH`, and otherwise just run `make` in this directory. Please note that modifying the `config_folder` variable in the Makefile is currently not supported.

Note that this project depends on [fzf](https://github.com/junegunn/fzf) and [bibtool](https://github.com/ge-ne/bibtool).

# Why cove?

As part of my selfishness, I will be writing this utility in fish shell script, as that is my default shell. In keeping with the aquatic theme, I like the idea of hoarding all my papers in a cove. Think little mermaid...

Hahaha, so I was thinking of a grotto, not a cove. Oh well, cove it is!

# Known issues

- `cove cite` currently does not disambiguate keys
  - modify the key code to copy from the bib file, rather than regenerating
