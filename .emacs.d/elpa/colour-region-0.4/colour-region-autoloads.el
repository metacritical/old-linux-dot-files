;;; colour-region-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (colour-region-load colour-region-save colour-region-yank-pop
;;;;;;  colour-region-yank colour-region-kill-ring-rotate colour-region-change-type
;;;;;;  colour-region-change-comment colour-region-kill colour-region-copy
;;;;;;  colour-region-previous colour-region-next colour-region-func
;;;;;;  colour-region-remove colour-region-toggle-text colour-region-toggle-overlay
;;;;;;  colour-region-store-text colour-region-new) "colour-region"
;;;;;;  "colour-region.el" (20887 21753 720723 733000))
;;; Generated autoloads from colour-region.el

(autoload 'colour-region-new "colour-region" "\
Create a new colour-region for selected region (if no region is selected inform user):
1) Prompt user for COMMENT for colour-region. 
2) If a positive prefix argument is given set colour-region type to that corresponding with prefix argument.
   Otherwise use type 1 colour-region.
3) Set state of colour-region to 1.
4) Add colour-region to colour-regions variable.
5) Apply overlay with format in colour-region-formats corresponding to state and type of colour-region.

Actually internal type and state values start from 0 not 1, 
but since I use prefix argument of 0 to mean all buffers, I use 1 to indicate initial type.

\(fn COMMENT)" t nil)

(autoload 'colour-region-store-text "colour-region" "\
If region is selected then run colour-region-new function.
Otherwise save currently displayed text, comment and state of colour-region(s).
Insert the new text-part into the next position in the text-parts list of this colour-region(s). 

If no prefix argument is given, apply to nearest colour-region in current buffer.
If a prefix argument of 0 is given, apply to all colour-regions in current buffer.
If a positive non-zero prefix argument is given, apply to all colour-regions in current buffer
with type corresponding to that prefix argument.

\(fn)" t nil)

(autoload 'colour-region-toggle-overlay "colour-region" "\
If region is selected then run colour-region-new function.
Otherwise toggle overlay state of colour-region(s): 
       if colour-region(s) is in final state, set it to state 0, 
       otherwise set it to next state.

If no prefix argument is given, apply to nearest colour-region in current buffer.
If a prefix argument of 0 is given, apply to all colour-regions in current buffer.
If a positive non-zero prefix argument is given, apply to all colour-regions in current buffer
with type corresponding to that prefix argument.

\(fn)" t nil)

(autoload 'colour-region-toggle-text "colour-region" "\
If region is selected then run colour-region-new function.
Otherwise save current text in current text-region of colour-region(s),
and toggle to next text-state: 
       if colour-region(s) is in final state, set it to state 0, 
       otherwise set it to next state.

If no prefix argument is given, apply to nearest colour-region in current buffer.
If a prefix argument of 0 is given, apply to all colour-regions in current buffer.
If a positive non-zero prefix argument is given, apply to all colour-regions in current buffer
with type corresponding to that prefix argument.

\(fn)" t nil)

(autoload 'colour-region-remove "colour-region" "\
Remove colour-region(s), and delete from colour-regions.

If no prefix argument is given, apply to nearest colour-region in current buffer.
If a prefix argument of 0 is given, apply to all colour-regions in current buffer.
If a positive non-zero prefix argument is given, apply to all colour-regions in current buffer
with type corresponding to that prefix argument.

\(fn)" t nil)

(autoload 'colour-region-func "colour-region" "\
Apply a user-supplied elisp function to colour-region(s).
The function (func) should take two arguments: the start and end positions of a region.
If applied to several colour-regions (i.e. when a prefix argument is used) func is applied 
to colour-regions one at a time in the order in which they appear in the current buffer.

If no prefix argument is given, apply to nearest colour-region in current buffer.
If a prefix argument of 0 is given, apply to all colour-regions in current buffer.
If a positive non-zero prefix argument is given, apply to all colour-regions in current buffer
with type corresponding to that prefix argument.

\(fn FUNC2)" t nil)

(autoload 'colour-region-next "colour-region" "\
Move point to next colour-region in current buffer.

If no prefix argument is given, move to next colour-region in current buffer.
If a prefix argument of 0 is given, move to first colour-region in current buffer.
If a positive non-zero prefix argument is given, move to next colour-region with type 
corresponding to that prefix argument.

\(fn)" t nil)

(autoload 'colour-region-previous "colour-region" "\
Move point to previous colour-region in current buffer.

If no prefix argument is given, move to previous colour-region in current buffer.
If a prefix argument of 0 is given, move to last colour-region in current buffer.
If a positive non-zero prefix argument is given, move to previous colour-region with type 
corresponding to that prefix argument.

\(fn)" t nil)

(autoload 'colour-region-copy "colour-region" "\
Copy colour-region to `colour-region-kill-ring'.
With no prefix argument copy nearest colour-region.
With non-zero prefix argument copy all colour-regions of type corresponding to argument.
With prefix argument of zero copy all colour-regions in current buffer.

\(fn)" t nil)

(autoload 'colour-region-kill "colour-region" "\
Kill colour-region and hidden text to colour-region-kill-ring.
With no prefix argument kill nearest colour-region.
With non-zero prefix argument kill all colour-regions of type corresponding to argument.
With prefix argument of zero kill all colour-regions in current buffer.

\(fn)" t nil)

(autoload 'colour-region-change-comment "colour-region" "\
Change the COMMENT of a colour-region(s).

If no prefix argument is given, apply to nearest colour-region in current buffer.
If a prefix argument of 0 is given, apply to all colour-regions in current buffer.
If a positive non-zero prefix argument is given, apply to all colour-regions in current buffer
with type corresponding to that prefix argument.

\(fn COMMENT)" t nil)

(autoload 'colour-region-change-type "colour-region" "\
Change the type of a colour-region(s). 
Prompts for a new TYPE number, if the number entered is larger than the number of 
currently available types then a new type is created (with value one higher than the 
previous highest type number) and the colour-region is set to that type.
If the number entered is invalid or less than 1, then the type is not changed.

If no prefix argument is given, apply to nearest colour-region in current buffer.
If a prefix argument of 0 is given, apply to all colour-regions in current buffer.
If a positive non-zero prefix argument is given, apply to all colour-regions in current buffer
with type corresponding to that prefix argument.

\(fn TYPE)" t nil)

(autoload 'colour-region-kill-ring-rotate "colour-region" "\
Rotate the `colour-region-kill-ring-index' so that it points to the next item in the ring.

\(fn)" t nil)

(autoload 'colour-region-yank "colour-region" "\
Yank the most recent kill in the `colour-region-kill-ring' into the buffer at point.

\(fn)" t nil)

(autoload 'colour-region-yank-pop "colour-region" "\
Rotate the `colour-region-kill-ring' and yank the next kill into the buffer at point.

\(fn)" t nil)

(autoload 'colour-region-save "colour-region" "\
Save colour-regions for the current buffer (if there are any) from FILENAME.
If FILENAME is not provided then the colour-regions are read from the filename returned by 
the colour-region-default-save-file function.

\(fn &optional FILENAME)" t nil)

(autoload 'colour-region-load "colour-region" "\
Load colour-regions for the current buffer from FILENAME.
If FILENAME is not provided then the colour-regions are stored in the filename returned by 
the colour-region-default-save-file function.

\(fn &optional FILENAME)" t nil)

;;;***

;;;### (autoloads nil nil ("colour-region-pkg.el") (20887 21753 803707
;;;;;;  441000))

;;;***

(provide 'colour-region-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; colour-region-autoloads.el ends here
