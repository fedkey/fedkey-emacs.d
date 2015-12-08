;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (el-get el-get-self-checksum el-get-checksum el-get-make-recipes
;;;;;;  el-get-cd el-get-reinstall el-get-remove el-get-self-update
;;;;;;  el-get-update-packages-of-type el-get-update-all el-get-update
;;;;;;  el-get-install el-get-version) "el-get/el-get" "el-get/el-get.el"
;;;;;;  (22118 50377 213674 0))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-install "el-get/el-get" "\
Cause the named PACKAGE to be installed after all of its
dependencies (if any).

PACKAGE may be either a string or the corresponding symbol.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update "el-get/el-get" "\
Update PACKAGE.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "el-get/el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-remove "el-get/el-get" "\
Remove any PACKAGE that is know to be installed or required.

\(fn PACKAGE)" t nil)

(autoload 'el-get-reinstall "el-get/el-get" "\
Remove PACKAGE and then install it again.

\(fn PACKAGE)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE)" t nil)

(autoload 'el-get-self-checksum "el-get/el-get" "\
Compute the checksum of the running version of el-get itself.

Also put the checksum in the kill-ring.

\(fn)" t nil)

(autoload 'el-get "el-get/el-get" "\
Ensure that packages have been downloaded once and init them as needed.

This will not update the sources by using `apt-get install' or
`git pull', but it will ensure that:

* the packages have been installed
* load-path is set so their elisp files can be found
* Info-directory-list is set so their info files can be found
* Autoloads have been prepared and evaluated for each package
* Any post-installation setup (e.g. `(require 'feature)') happens

When SYNC is nil (the default), all installations run
concurrently, in the background.

When SYNC is 'sync, each package will be installed synchronously,
and any error will stop it all.

Please note that the `el-get-init' part of `el-get' is always
done synchronously. There's `byte-compile' support though, and
the packages you use are welcome to use `autoload' too.

PACKAGES is expected to be a list of packages you want to install
or init.  When PACKAGES is omited (the default), the list of
already installed packages is considered.

\(fn &optional SYNC &rest PACKAGES)" nil nil)

;;;***

;;;### (autoloads (el-get-bundle! el-get-bundle el-get-bundle-el-get)
;;;;;;  "el-get/el-get-bundle" "el-get/el-get-bundle.el" (22118 50377
;;;;;;  209674 0))
;;; Generated autoloads from el-get/el-get-bundle.el

(autoload 'el-get-bundle-el-get "el-get/el-get-bundle" "\


\(fn SRC)" nil nil)

(autoload 'el-get-bundle "el-get/el-get-bundle" "\
Install PACKAGE and run initialization FORM.

PACKAGE can be either a simple package name or a package name
with a modifier before the name to specify local recipe source
information:

* `<owner>/' : specifies a Github owner name
* `gist:<id>' : specifies a Gist ID
* `<type>:' : specifies a type of the package source

If `FEATURE in PACKAGE' form is used instead of PACKAGE, then
that FEATURE is `require'd after installing PACKAGE.  You can
also use `el-get-bundle!' macro if FEATURE and PACKAGE are the
same.  If you wish to `require' more than one feature, then use
`:features' property in FORM.

The initialization FORM may start with a property list that
describes a local recipe.  The FORM after the property list is
treated as initialization code, which is actually an `:after'
property of the local recipe.

A copy of the initialization code is stored in a directory
specified by `el-get-bundle-init-directory' and its byte-compiled
version is used if `el-get-bundle-byte-compile' is non-nil.

\(fn PACKAGE &rest FORM)" nil t)

(put 'el-get-bundle 'lisp-indent-function 'defun)

(autoload 'el-get-bundle! "el-get/el-get-bundle" "\
Install PACKAGE and run initialization form.
It is the same as `el-get-bundle' except that PACKAGE is explicitly
required.

\(fn PACKAGE &rest ARGS)" nil t)

(put 'el-get-bundle! 'lisp-indent-function 'defun)

;;;***

;;;### (autoloads (el-get-check-recipe) "el-get/el-get-check" "el-get/el-get-check.el"
;;;;;;  (22118 50377 213674 0))
;;; Generated autoloads from el-get/el-get-check.el

(autoload 'el-get-check-recipe "el-get/el-get-check" "\
Check the format of the recipe.
Please run this command before sending a pull request.
Usage: M-x el-get-check-recipe RET

You can run this function from checker script like this:
    test/check-recipe.el PATH/TO/RECIPE.rcp

When used as a lisp function, FILE-OR-BUFFER must be a buffer
object or a file path.

\(fn FILE-OR-BUFFER)" t nil)

;;;***

;;;### (autoloads (el-get-list-packages) "el-get/el-get-list-packages"
;;;;;;  "el-get/el-get-list-packages.el" (22118 50377 213674 0))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads (color-theme-solarized-light color-theme-solarized-dark
;;;;;;  color-theme-solarized) "emacs-color-theme-solarized/color-theme-solarized"
;;;;;;  "emacs-color-theme-solarized/color-theme-solarized.el" (22118
;;;;;;  51950 881674 0))
;;; Generated autoloads from emacs-color-theme-solarized/color-theme-solarized.el

(autoload 'color-theme-solarized "emacs-color-theme-solarized/color-theme-solarized" "\
Color theme by Ethan Schoonover, created 2011-03-24.
Ported to Emacs by Greg Pfeil, http://ethanschoonover.com/solarized.

\(fn)" t nil)

(autoload 'color-theme-solarized-dark "emacs-color-theme-solarized/color-theme-solarized" "\
Color theme by Ethan Schoonover, created 2011-03-24.
Ported to Emacs by Greg Pfeil, http://ethanschoonover.com/solarized.

\(fn)" nil nil)

(make-obsolete 'color-theme-solarized-dark 'color-theme-solarized "2013-05-01")

(autoload 'color-theme-solarized-light "emacs-color-theme-solarized/color-theme-solarized" "\
Color theme by Ethan Schoonover, created 2011-03-24.
Ported to Emacs by Greg Pfeil, http://ethanschoonover.com/solarized.

\(fn)" nil nil)

(make-obsolete 'color-theme-solarized-light 'color-theme-solarized "2013-05-01")

;;;***

;;;### (autoloads nil "emacs-color-theme-solarized/solarized-definitions"
;;;;;;  "emacs-color-theme-solarized/solarized-definitions.el" (22118
;;;;;;  51950 881674 0))
;;; Generated autoloads from emacs-color-theme-solarized/solarized-definitions.el

(when (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))

;;;***

;;;### (autoloads (flymake-find-file-hook flymake-mode-off flymake-mode-on
;;;;;;  flymake-mode) "flymake/flymake" "flymake/flymake.el" (22118
;;;;;;  52782 949674 0))
;;; Generated autoloads from flymake/flymake.el

(autoload 'flymake-mode "flymake/flymake" "\
Toggle on-the-fly syntax checking.
With a prefix argument ARG, enable the mode if ARG is positive,
and disable it otherwise.  If called from Lisp, enable the mode
if ARG is omitted or nil.

\(fn &optional ARG)" t nil)

(autoload 'flymake-mode-on "flymake/flymake" "\
Turn flymake mode on.

\(fn)" nil nil)

(autoload 'flymake-mode-off "flymake/flymake" "\
Turn flymake mode off.

\(fn)" nil nil)

(autoload 'flymake-find-file-hook "flymake/flymake" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads (flyspell-buffer flyspell-region flyspell-mode-off
;;;;;;  flyspell-version flyspell-mode flyspell-prog-mode flyspell-mode-line-string)
;;;;;;  "flyspell/flyspell-1.7q" "flyspell/flyspell-1.7q.el" (22118
;;;;;;  52876 241674 0))
;;; Generated autoloads from flyspell/flyspell-1.7q.el

(defvar flyspell-mode-line-string " Fly" "\
*String displayed on the modeline when flyspell is active.
Set this to nil if you don't want a modeline indicator.")

(custom-autoload 'flyspell-mode-line-string "flyspell/flyspell-1.7q" t)

(autoload 'flyspell-prog-mode "flyspell/flyspell-1.7q" "\
Turn on `flyspell-mode' for comments and strings.

\(fn)" t nil)

(defvar flyspell-mode nil)

(defvar flyspell-mode-map (make-sparse-keymap))

(autoload 'flyspell-mode "flyspell/flyspell-1.7q" "\
Minor mode performing on-the-fly spelling checking.
Ispell is automatically spawned on background for each entered words.
The default flyspell behavior is to highlight incorrect words.
With no argument, this command toggles Flyspell mode.
With a prefix argument ARG, turn Flyspell minor mode on iff ARG is positive.
  
Bindings:
\\[ispell-word]: correct words (using Ispell).
\\[flyspell-auto-correct-word]: automatically correct word.
\\[flyspell-auto-correct-previous-word]: automatically correct the last misspelled word.
\\[flyspell-correct-word] (or down-mouse-2): popup correct words.

Hooks:
This runs `flyspell-mode-hook' after flyspell is entered.

Remark:
`flyspell-mode' uses `ispell-mode'.  Thus all Ispell options are
valid.  For instance, a personal dictionary can be used by
invoking `ispell-change-dictionary'.

Consider using the `ispell-parser' to check your text.  For instance
consider adding:
\(add-hook 'tex-mode-hook (function (lambda () (setq ispell-parser 'tex))))
in your .emacs file.

\\[flyspell-region] checks all words inside a region.
\\[flyspell-buffer] checks the whole buffer.

\(fn &optional ARG)" t nil)

(if (fboundp 'add-minor-mode) (add-minor-mode 'flyspell-mode 'flyspell-mode-line-string flyspell-mode-map nil 'flyspell-mode) (or (assoc 'flyspell-mode minor-mode-alist) (setq minor-mode-alist (cons '(flyspell-mode flyspell-mode-line-string) minor-mode-alist))) (or (assoc 'flyspell-mode minor-mode-map-alist) (setq minor-mode-map-alist (cons (cons 'flyspell-mode flyspell-mode-map) minor-mode-map-alist))))

(autoload 'flyspell-version "flyspell/flyspell-1.7q" "\
The flyspell version

\(fn)" t nil)

(autoload 'flyspell-mode-off "flyspell/flyspell-1.7q" "\
Turn Flyspell mode off.

\(fn)" nil nil)

(autoload 'flyspell-region "flyspell/flyspell-1.7q" "\
Flyspell text between BEG and END.

\(fn BEG END)" t nil)

(autoload 'flyspell-buffer "flyspell/flyspell-1.7q" "\
Flyspell whole buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads (mc/edit-beginnings-of-lines mc/edit-ends-of-lines
;;;;;;  mc/edit-lines) "multiple-cursors/mc-edit-lines" "multiple-cursors/mc-edit-lines.el"
;;;;;;  (22118 53650 373674 0))
;;; Generated autoloads from multiple-cursors/mc-edit-lines.el

(autoload 'mc/edit-lines "multiple-cursors/mc-edit-lines" "\
Add one cursor to each line of the active region.
Starts from mark and moves in straight down or up towards the
line point is on.

What is done with lines which are not long enough is governed by
`mc/edit-lines-empty-lines'.  The prefix argument ARG can be used
to override this.  If ARG is a symbol (when called from Lisp),
that symbol is used instead of `mc/edit-lines-empty-lines'.
Otherwise, if ARG negative, short lines will be ignored.  Any
other non-nil value will cause short lines to be padded.

\(fn &optional ARG)" t nil)

(autoload 'mc/edit-ends-of-lines "multiple-cursors/mc-edit-lines" "\
Add one cursor to the end of each line in the active region.

\(fn)" t nil)

(autoload 'mc/edit-beginnings-of-lines "multiple-cursors/mc-edit-lines" "\
Add one cursor to the beginning of each line in the active region.

\(fn)" t nil)

;;;***

;;;### (autoloads (mc-hide-unmatched-lines-mode) "multiple-cursors/mc-hide-unmatched-lines-mode"
;;;;;;  "multiple-cursors/mc-hide-unmatched-lines-mode.el" (22118
;;;;;;  53650 373674 0))
;;; Generated autoloads from multiple-cursors/mc-hide-unmatched-lines-mode.el

(autoload 'mc-hide-unmatched-lines-mode "multiple-cursors/mc-hide-unmatched-lines-mode" "\
Minor mode when enabled hides all lines where no cursors (and
also hum/lines-to-expand below and above) To make use of this
mode press \"C-'\" while multiple-cursor-mode is active. You can
still edit lines while you are in mc-hide-unmatched-lines
mode. To leave this mode press <return> or \"C-g\"

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (mc/mark-sgml-tag-pair mc/add-cursor-on-click mc/mark-all-symbols-like-this-in-defun
;;;;;;  mc/mark-all-words-like-this-in-defun mc/mark-all-like-this-in-defun
;;;;;;  mc/mark-all-dwim mc/mark-all-like-this-dwim mc/mark-more-like-this-extended
;;;;;;  mc/mark-all-in-region-regexp mc/mark-all-in-region mc/mark-all-symbols-like-this
;;;;;;  mc/mark-all-words-like-this mc/mark-all-like-this mc/skip-to-previous-like-this
;;;;;;  mc/skip-to-next-like-this mc/unmark-previous-like-this mc/unmark-next-like-this
;;;;;;  mc/mark-previous-lines mc/mark-next-lines mc/mark-previous-symbol-like-this
;;;;;;  mc/mark-previous-word-like-this mc/mark-previous-like-this
;;;;;;  mc/mark-next-symbol-like-this mc/mark-next-word-like-this
;;;;;;  mc/mark-next-like-this-word mc/mark-next-like-this) "multiple-cursors/mc-mark-more"
;;;;;;  "multiple-cursors/mc-mark-more.el" (22118 53650 373674 0))
;;; Generated autoloads from multiple-cursors/mc-mark-more.el

(autoload 'mc/mark-next-like-this "multiple-cursors/mc-mark-more" "\
Find and mark the next part of the buffer matching the currently active region
If no region is active add a cursor on the next line
With negative ARG, delete the last one instead.
With zero ARG, skip the last one and mark next.

\(fn ARG)" t nil)

(autoload 'mc/mark-next-like-this-word "multiple-cursors/mc-mark-more" "\
Find and mark the next part of the buffer matching the currently active region
If no region is active, mark the word at the point and find the next match
With negative ARG, delete the last one instead.
With zero ARG, skip the last one and mark next.

\(fn ARG)" t nil)

(autoload 'mc/mark-next-word-like-this "multiple-cursors/mc-mark-more" "\


\(fn ARG)" t nil)

(autoload 'mc/mark-next-symbol-like-this "multiple-cursors/mc-mark-more" "\


\(fn ARG)" t nil)

(autoload 'mc/mark-previous-like-this "multiple-cursors/mc-mark-more" "\
Find and mark the previous part of the buffer matching the currently active region
With negative ARG, delete the last one instead.
With zero ARG, skip the last one and mark next.

\(fn ARG)" t nil)

(autoload 'mc/mark-previous-word-like-this "multiple-cursors/mc-mark-more" "\


\(fn ARG)" t nil)

(autoload 'mc/mark-previous-symbol-like-this "multiple-cursors/mc-mark-more" "\


\(fn ARG)" t nil)

(autoload 'mc/mark-next-lines "multiple-cursors/mc-mark-more" "\


\(fn ARG)" t nil)

(autoload 'mc/mark-previous-lines "multiple-cursors/mc-mark-more" "\


\(fn ARG)" t nil)

(autoload 'mc/unmark-next-like-this "multiple-cursors/mc-mark-more" "\
Deselect next part of the buffer matching the currently active region.

\(fn)" t nil)

(autoload 'mc/unmark-previous-like-this "multiple-cursors/mc-mark-more" "\
Deselect prev part of the buffer matching the currently active region.

\(fn)" t nil)

(autoload 'mc/skip-to-next-like-this "multiple-cursors/mc-mark-more" "\
Skip the current one and select the next part of the buffer matching the currently active region.

\(fn)" t nil)

(autoload 'mc/skip-to-previous-like-this "multiple-cursors/mc-mark-more" "\
Skip the current one and select the prev part of the buffer matching the currently active region.

\(fn)" t nil)

(autoload 'mc/mark-all-like-this "multiple-cursors/mc-mark-more" "\
Find and mark all the parts of the buffer matching the currently active region

\(fn)" t nil)

(autoload 'mc/mark-all-words-like-this "multiple-cursors/mc-mark-more" "\


\(fn)" t nil)

(autoload 'mc/mark-all-symbols-like-this "multiple-cursors/mc-mark-more" "\


\(fn)" t nil)

(autoload 'mc/mark-all-in-region "multiple-cursors/mc-mark-more" "\
Find and mark all the parts in the region matching the given search

\(fn BEG END &optional SEARCH)" t nil)

(autoload 'mc/mark-all-in-region-regexp "multiple-cursors/mc-mark-more" "\
Find and mark all the parts in the region matching the given regexp

\(fn BEG END)" t nil)

(autoload 'mc/mark-more-like-this-extended "multiple-cursors/mc-mark-more" "\
Like mark-more-like-this, but then lets you adjust with arrows key.
The adjustments work like this:

   <up>    Mark previous like this and set direction to 'up
   <down>  Mark next like this and set direction to 'down

If direction is 'up:

   <left>  Skip past the cursor furthest up
   <right> Remove the cursor furthest up

If direction is 'down:

   <left>  Remove the cursor furthest down
   <right> Skip past the cursor furthest down

The bindings for these commands can be changed. See `mc/mark-more-like-this-extended-keymap'.

\(fn)" t nil)

(autoload 'mc/mark-all-like-this-dwim "multiple-cursors/mc-mark-more" "\
Tries to guess what you want to mark all of.
Can be pressed multiple times to increase selection.

With prefix, it behaves the same as original `mc/mark-all-like-this'

\(fn ARG)" t nil)

(autoload 'mc/mark-all-dwim "multiple-cursors/mc-mark-more" "\
Tries even harder to guess what you want to mark all of.

If the region is active and spans multiple lines, it will behave
as if `mc/mark-all-in-region'. With the prefix ARG, it will call
`mc/edit-lines' instead.

If the region is inactive or on a single line, it will behave like
`mc/mark-all-like-this-dwim'.

\(fn ARG)" t nil)

(autoload 'mc/mark-all-like-this-in-defun "multiple-cursors/mc-mark-more" "\
Mark all like this in defun.

\(fn)" t nil)

(autoload 'mc/mark-all-words-like-this-in-defun "multiple-cursors/mc-mark-more" "\
Mark all words like this in defun.

\(fn)" t nil)

(autoload 'mc/mark-all-symbols-like-this-in-defun "multiple-cursors/mc-mark-more" "\
Mark all symbols like this in defun.

\(fn)" t nil)

(autoload 'mc/add-cursor-on-click "multiple-cursors/mc-mark-more" "\
Add a cursor where you click.

\(fn EVENT)" t nil)

(autoload 'mc/mark-sgml-tag-pair "multiple-cursors/mc-mark-more" "\
Mark the tag we're in and its pair for renaming.

\(fn)" t nil)

;;;***

;;;### (autoloads (mc/mark-pop) "multiple-cursors/mc-mark-pop" "multiple-cursors/mc-mark-pop.el"
;;;;;;  (22118 53650 373674 0))
;;; Generated autoloads from multiple-cursors/mc-mark-pop.el

(autoload 'mc/mark-pop "multiple-cursors/mc-mark-pop" "\
Add a cursor at the current point, pop off mark ring and jump
to the popped mark.

\(fn)" t nil)

;;;***

;;;### (autoloads (mc/vertical-align-with-space mc/vertical-align
;;;;;;  mc/sort-regions mc/reverse-regions mc/insert-letters mc/insert-numbers)
;;;;;;  "multiple-cursors/mc-separate-operations" "multiple-cursors/mc-separate-operations.el"
;;;;;;  (22118 53650 373674 0))
;;; Generated autoloads from multiple-cursors/mc-separate-operations.el

(autoload 'mc/insert-numbers "multiple-cursors/mc-separate-operations" "\
Insert increasing numbers for each cursor, starting at 0 or ARG.

\(fn ARG)" t nil)

(autoload 'mc/insert-letters "multiple-cursors/mc-separate-operations" "\
Insert increasing letters for each cursor, starting at 0 or ARG.
     Where letter[0]=a letter[2]=c letter[26]=aa

\(fn ARG)" t nil)

(autoload 'mc/reverse-regions "multiple-cursors/mc-separate-operations" "\


\(fn)" t nil)

(autoload 'mc/sort-regions "multiple-cursors/mc-separate-operations" "\


\(fn)" t nil)

(autoload 'mc/vertical-align "multiple-cursors/mc-separate-operations" "\
Aligns all cursors vertically with a given CHARACTER to the one with the
highest colum number (the rightest).
Might not behave as intended if more than one cursors are on the same line.

\(fn CHARACTER)" t nil)

(autoload 'mc/vertical-align-with-space "multiple-cursors/mc-separate-operations" "\
Aligns all cursors with whitespace like `mc/vertical-align' does

\(fn)" t nil)

;;;***

;;;### (autoloads (multiple-cursors-mode) "multiple-cursors/multiple-cursors-core"
;;;;;;  "multiple-cursors/multiple-cursors-core.el" (22118 53650
;;;;;;  373674 0))
;;; Generated autoloads from multiple-cursors/multiple-cursors-core.el

(autoload 'multiple-cursors-mode "multiple-cursors/multiple-cursors-core" "\
Mode while multiple cursors are active.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (rectangular-region-mode set-rectangular-region-anchor)
;;;;;;  "multiple-cursors/rectangular-region-mode" "multiple-cursors/rectangular-region-mode.el"
;;;;;;  (22118 53650 377674 0))
;;; Generated autoloads from multiple-cursors/rectangular-region-mode.el

(autoload 'set-rectangular-region-anchor "multiple-cursors/rectangular-region-mode" "\
Anchors the rectangular region at point.

Think of this one as `set-mark' except you're marking a rectangular region. It is
an exceedingly quick way of adding multiple cursors to multiple lines.

\(fn)" t nil)

(autoload 'rectangular-region-mode "multiple-cursors/rectangular-region-mode" "\
A mode for creating a rectangular region to edit

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (neotree-dir neotree-hide neotree-show neotree-toggle
;;;;;;  neotree-find) "neotree/neotree" "neotree/neotree.el" (22118
;;;;;;  52243 385674 0))
;;; Generated autoloads from neotree/neotree.el

(autoload 'neotree-find "neotree/neotree" "\
Quick select node which specified PATH in NeoTree.
If path is nil and no buffer file name, then use DEFAULT-PATH,

\(fn &optional PATH DEFAULT-PATH)" t nil)

(autoload 'neotree-toggle "neotree/neotree" "\
Toggle show the NeoTree window.

\(fn)" t nil)

(autoload 'neotree-show "neotree/neotree" "\
Show the NeoTree widnow.

\(fn)" t nil)

(autoload 'neotree-hide "neotree/neotree" "\
Close the NeoTree window.

\(fn)" t nil)

(autoload 'neotree-dir "neotree/neotree" "\
Show the NeoTree window, and change root to PATH.

\(fn PATH)" t nil)

(defalias 'neotree 'neotree-show "\
Show the NeoTree window.")

;;;***

;;;### (autoloads (powerline-fill powerline-raw defpowerline powerline-concat
;;;;;;  powerline-mouse powerline-hud) "powerline/powerline" "powerline/powerline.el"
;;;;;;  (22118 53854 813674 0))
;;; Generated autoloads from powerline/powerline.el

(autoload 'powerline-hud "powerline/powerline" "\
Return an XPM of relative buffer location using FACE1 and FACE2 of optional WIDTH.

\(fn FACE1 FACE2 &optional WIDTH)" nil nil)

(autoload 'powerline-mouse "powerline/powerline" "\
Return mouse handler for CLICK-GROUP given CLICK-TYPE and STRING.

\(fn CLICK-GROUP CLICK-TYPE STRING)" nil nil)

(autoload 'powerline-concat "powerline/powerline" "\
Concatonate STRINGS and pad sides by spaces.

\(fn &rest STRINGS)" nil nil)

(autoload 'defpowerline "powerline/powerline" "\
Create function NAME by wrapping BODY with powerline padding an propetization.

\(fn NAME BODY)" nil t)

(autoload 'powerline-raw "powerline/powerline" "\
Render STR as mode-line data using FACE and optionally PAD import on left (l) or right (r).

\(fn STR &optional FACE PAD)" nil nil)

(autoload 'powerline-fill "powerline/powerline" "\
Return empty space using FACE and leaving RESERVE space on the right.

\(fn FACE RESERVE)" nil nil)
 (autoload 'powerline-major-mode "powerline")
 (autoload 'powerline-minor-modes "powerline")
 (autoload 'powerline-narrow "powerline")
 (autoload 'powerline-vc "powerline")
 (autoload 'powerline-buffer-size "powerline")
 (autoload 'powerline-buffer-id "powerline")
 (autoload 'powerline-process "powerline")
 (autoload 'powerline-selected-window-active "powerline")

;;;***

;;;### (autoloads (powerline-nano-theme powerline-vim-theme powerline-center-theme
;;;;;;  powerline-default-theme) "powerline/powerline-themes" "powerline/powerline-themes.el"
;;;;;;  (22118 53854 813674 0))
;;; Generated autoloads from powerline/powerline-themes.el

(autoload 'powerline-default-theme "powerline/powerline-themes" "\
Setup the default mode-line.

\(fn)" t nil)

(autoload 'powerline-center-theme "powerline/powerline-themes" "\
Setup a mode-line with major and minor modes centered.

\(fn)" t nil)

(autoload 'powerline-vim-theme "powerline/powerline-themes" "\
Setup a Vim-like mode-line.

\(fn)" t nil)

(autoload 'powerline-nano-theme "powerline/powerline-themes" "\
Setup a nano-like mode-line.

\(fn)" t nil)

;;;***

;;;### (autoloads (tabbar-ruler-move tabbar-ruler-backward tabbar-ruler-forward
;;;;;;  tabbar-ruler-up tabbar-install-faces) "tabbar-ruler/tabbar-ruler"
;;;;;;  "tabbar-ruler/tabbar-ruler.el" (22118 52227 121674 0))
;;; Generated autoloads from tabbar-ruler/tabbar-ruler.el

(autoload 'tabbar-install-faces "tabbar-ruler/tabbar-ruler" "\
Installs faces for a frame.

\(fn &optional FRAME)" t nil)

(autoload 'tabbar-ruler-up "tabbar-ruler/tabbar-ruler" "\
Tabbar press up key.

\(fn &optional ARG)" t nil)

(autoload 'tabbar-ruler-forward "tabbar-ruler/tabbar-ruler" "\
Forward ruler. Takes into consideration if the home-key was pressed.
This is based on the variable `tabbar--buffer-show-groups'

\(fn &optional ARG)" t nil)

(autoload 'tabbar-ruler-backward "tabbar-ruler/tabbar-ruler" "\
Backward ruler.  Takes into consideration if the home-key was pressed.

\(fn &optional ARG)" t nil)

(autoload 'tabbar-ruler-move "tabbar-ruler/tabbar-ruler" "\
Start the movement for the tabbar

\(fn)" t nil)

;;;***

;;;### (autoloads (revive-save-desktop revive-desktop resume save-current-configuration
;;;;;;  wipe restore-window-configuration current-window-configuration-printable)
;;;;;;  "tabbar/revive" "tabbar/revive.el" (22118 51539 949674 0))
;;; Generated autoloads from tabbar/revive.el

(autoload 'current-window-configuration-printable "tabbar/revive" "\
Return the printable current-window-configuration.
This configuration will be stored by restore-window-configuration.
Returned configurations are list of:
'(Screen-Width Screen-Height Edge-List Buffer-List)

Edge-List is a return value of revive:all-window-edges, list of all
window-edges whose first member is always of north west window.

Buffer-List is a list of buffer property list of all windows.  This
property lists are stored in order corresponding to Edge-List.  Buffer
property list is formed as
'((buffer-file-name) (buffer-name) (point) (window-start) tabs).

\(fn)" nil nil)

(autoload 'restore-window-configuration "tabbar/revive" "\
Restore the window configuration.
Configuration CONFIG should be created by
current-window-configuration-printable.

\(fn CONFIG)" nil nil)

(autoload 'wipe "tabbar/revive" "\
Wipe Emacs.

\(fn)" t nil)

(autoload 'save-current-configuration "tabbar/revive" "\
Save current window/buffer configuration into configuration file.

\(fn &optional NUM)" t nil)

(autoload 'resume "tabbar/revive" "\
Resume window/buffer configuration.
Configuration should be saved by save-current-configuration.

\(fn &optional NUM)" t nil)

(autoload 'revive-desktop "tabbar/revive" "\
Restores the application state.
Similar to `resume', though using `desktop' to restore buffers.

\(fn &optional FILE AUTO)" t nil)

(autoload 'revive-save-desktop "tabbar/revive" "\
Save application state with `desktop' and `revive'.
Similar to `save-current-configuration', 
though uses `desktop' to restore buffers.

\(fn &optional FILE AUTO)" t nil)

;;;***

;;;### (autoloads (tabbar-mwheel-mode tabbar-mode tabbar-local-mode
;;;;;;  tabbar-mwheel-switch-group tabbar-mwheel-switch-tab tabbar-mwheel-forward-tab
;;;;;;  tabbar-mwheel-backward-tab tabbar-mwheel-forward-group tabbar-mwheel-backward-group
;;;;;;  tabbar-mwheel-forward tabbar-mwheel-backward tabbar-press-scroll-right
;;;;;;  tabbar-press-scroll-left tabbar-press-home tabbar-forward-tab
;;;;;;  tabbar-backward-tab tabbar-forward-group tabbar-backward-group
;;;;;;  tabbar-forward tabbar-backward) "tabbar/tabbar" "tabbar/tabbar.el"
;;;;;;  (22118 51539 949674 0))
;;; Generated autoloads from tabbar/tabbar.el

(autoload 'tabbar-backward "tabbar/tabbar" "\
Select the previous available tab.
Depend on the setting of the option `tabbar-cycle-scope'.

\(fn)" t nil)

(autoload 'tabbar-forward "tabbar/tabbar" "\
Select the next available tab.
Depend on the setting of the option `tabbar-cycle-scope'.

\(fn)" t nil)

(autoload 'tabbar-backward-group "tabbar/tabbar" "\
Go to selected tab in the previous available group.

\(fn)" t nil)

(autoload 'tabbar-forward-group "tabbar/tabbar" "\
Go to selected tab in the next available group.

\(fn)" t nil)

(autoload 'tabbar-backward-tab "tabbar/tabbar" "\
Select the previous visible tab.

\(fn)" t nil)

(autoload 'tabbar-forward-tab "tabbar/tabbar" "\
Select the next visible tab.

\(fn)" t nil)

(autoload 'tabbar-press-home "tabbar/tabbar" "\
Press the tab bar home button.
That is, simulate a mouse click on that button.
A numeric prefix ARG value of 2, or 3, respectively simulates a
mouse-2, or mouse-3 click.  The default is a mouse-1 click.

\(fn &optional ARG)" t nil)

(autoload 'tabbar-press-scroll-left "tabbar/tabbar" "\
Press the tab bar scroll-left button.
That is, simulate a mouse click on that button.
A numeric prefix ARG value of 2, or 3, respectively simulates a
mouse-2, or mouse-3 click.  The default is a mouse-1 click.

\(fn &optional ARG)" t nil)

(autoload 'tabbar-press-scroll-right "tabbar/tabbar" "\
Press the tab bar scroll-right button.
That is, simulate a mouse click on that button.
A numeric prefix ARG value of 2, or 3, respectively simulates a
mouse-2, or mouse-3 click.  The default is a mouse-1 click.

\(fn &optional ARG)" t nil)

(autoload 'tabbar-mwheel-backward "tabbar/tabbar" "\
Select the previous available tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-backward'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-forward "tabbar/tabbar" "\
Select the next available tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-forward'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-backward-group "tabbar/tabbar" "\
Go to selected tab in the previous available group.
If there is only one group, select the previous visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-backward-group'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-forward-group "tabbar/tabbar" "\
Go to selected tab in the next available group.
If there is only one group, select the next visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-forward-group'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-backward-tab "tabbar/tabbar" "\
Select the previous visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-backward-tab'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-forward-tab "tabbar/tabbar" "\
Select the next visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-forward-tab'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-switch-tab "tabbar/tabbar" "\
Select the next or previous tab according to EVENT.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-switch-group "tabbar/tabbar" "\
Select the next or previous group of tabs according to EVENT.

\(fn EVENT)" t nil)

(autoload 'tabbar-local-mode "tabbar/tabbar" "\
Toggle local display of the tab bar.
With prefix argument ARG, turn on if positive, otherwise off.
Returns non-nil if the new state is enabled.
When turned on, if a local header line is shown, it is hidden to show
the tab bar.  The tab bar is locally hidden otherwise.  When turned
off, if a local header line is hidden or the tab bar is locally
hidden, it is shown again.  Signal an error if Tabbar mode is off.

\(fn &optional ARG)" t nil)

(defvar tabbar-mode nil "\
Non-nil if Tabbar mode is enabled.
See the command `tabbar-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `tabbar-mode'.")

(custom-autoload 'tabbar-mode "tabbar/tabbar" nil)

(autoload 'tabbar-mode "tabbar/tabbar" "\
Toggle display of a tab bar in the header line.
With prefix argument ARG, turn on if positive, otherwise off.
Returns non-nil if the new state is enabled.

\\{tabbar-mode-map}

\(fn &optional ARG)" t nil)

(defvar tabbar-mwheel-mode nil "\
Non-nil if Tabbar-Mwheel mode is enabled.
See the command `tabbar-mwheel-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `tabbar-mwheel-mode'.")

(custom-autoload 'tabbar-mwheel-mode "tabbar/tabbar" nil)

(autoload 'tabbar-mwheel-mode "tabbar/tabbar" "\
Toggle use of the mouse wheel to navigate through tabs or groups.
With prefix argument ARG, turn on if positive, otherwise off.
Returns non-nil if the new state is enabled.

\\{tabbar-mwheel-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (global-undo-tree-mode undo-tree-mode) "undo-tree/undo-tree"
;;;;;;  "undo-tree/undo-tree.el" (22118 52464 477674 0))
;;; Generated autoloads from undo-tree/undo-tree.el

(autoload 'undo-tree-mode "undo-tree/undo-tree" "\
Toggle undo-tree mode.
With no argument, this command toggles the mode.
A positive prefix argument turns the mode on.
A negative prefix argument turns it off.

Undo-tree-mode replaces Emacs' standard undo feature with a more
powerful yet easier to use version, that treats the undo history
as what it is: a tree.

The following keys are available in `undo-tree-mode':

  \\{undo-tree-map}

Within the undo-tree visualizer, the following keys are available:

  \\{undo-tree-visualizer-mode-map}

\(fn &optional ARG)" t nil)

(defvar global-undo-tree-mode nil "\
Non-nil if Global-Undo-Tree mode is enabled.
See the command `global-undo-tree-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-undo-tree-mode'.")

(custom-autoload 'global-undo-tree-mode "undo-tree/undo-tree" nil)

(autoload 'global-undo-tree-mode "undo-tree/undo-tree" "\
Toggle Undo-Tree mode in all buffers.
With prefix ARG, enable Global-Undo-Tree mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Undo-Tree mode is enabled in all buffers where
`turn-on-undo-tree-mode' would do it.
See `undo-tree-mode' for more information on Undo-Tree mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("el-get/el-get-autoloading.el" "el-get/el-get-build.el"
;;;;;;  "el-get/el-get-byte-compile.el" "el-get/el-get-core.el" "el-get/el-get-custom.el"
;;;;;;  "el-get/el-get-dependencies.el" "el-get/el-get-install.el"
;;;;;;  "el-get/el-get-methods.el" "el-get/el-get-notify.el" "el-get/el-get-recipes.el"
;;;;;;  "el-get/el-get-status.el" "emacs-color-theme-solarized/color-theme-solarized-pkg.el"
;;;;;;  "emacs-color-theme-solarized/solarized-theme.el" "multiple-cursors/mc-cycle-cursors.el"
;;;;;;  "multiple-cursors/multiple-cursors-pkg.el" "multiple-cursors/multiple-cursors.el"
;;;;;;  "powerline/powerline-separators.el" "tabbar/aquamacs-compat.el"
;;;;;;  "tabbar/aquamacs-tabbar.el" "tabbar/aquamacs-tools.el" "tabbar/one-buffer-one-frame.el"
;;;;;;  "tabbar/tabbar-window.el") (22118 53855 469519 840000))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
