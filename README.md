# Location of Compiled files:

* [Haskell code](https://oisdk.github.io/latex-paper-template/haskell/index.html)
* [Agda code](https://oisdk.github.io/latex-paper-template/agda-tex/agda/Everything.html)
* [Paper](https://oisdk.github.io/latex-paper-template/agda-tex/paper.pdf)

# LaTeX Cheat Sheet

## Subfigure

* Import:

   ```
   \usepackage{subcaption}
   ```

   Other options are `subfig` or `subfigure`.
   `subfig` is the replacement for `subfigure`, so don't use `subfigure`, and
   `subfig` doesn't work with `hyperref`.

* Usage:

  ```
  \begin{subfigure}[t/c/b]{width}
  ```

  Best off using `[t]` alignment, as otherwise side-by-side figures look bad.
  Also put captions on top generally, with the caption for the whole figure on
  the bottom.
  
## Wrapfigure

Use to stick a figure on the left or right of a page with text wrapping around
it.

* Import:

   ```
   \usepackage{wrapfig}
   ```

* Usage:

   ```
   \begin{wrapfigure}[lines]{r/l/R/L}{width}
   ```
   
   Lowercase means "exactly here", uppercase means "float".
   
   
## Minipage

* Usage:

   ```
   \begin{minipage}[c\t\b]{width}
   ```
