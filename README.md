# What is cove?

Cove is my take on a CLI bibtex and pdf organization tool. It draws heavy inspiration from papis and fzf-bibtex, but is selfishly centered on tools I like to use and for my own preferred workflow.

Some key ideas:
  - bibtex info is primarily added using doi information and curl -- Done!
  - duplicate records will be rejected using doi for identification -- Done!
  - keys will be managed using bibtool and will default to singleauthoryear -- Done!
    - keys will be disambiguated by letter suffixes *in the order they are added* so as to maintain stability as records are added
  - fzf will be used to search records and insert bibtex keys -- Done!
  - eventually I would like pdf's to be searched and opened using fzf as well

# Why cove?

As part of my selfishness, I will be writing this utility in fish shell script, as that is my default shell. In keeping with the aquatic theme, I like the idea of hoarding all my papers in a cove. Think little mermaid.
