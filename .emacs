;;In the Unix Apostolic tradition, emacs stands as the bridge of time that spans TECO to Modern Computers.
;;Stallman wrote the first set of editor macros in 1976 for TECO which became emacs. Emacs has stood the test of time 
;;and is the most extensible editor known to man. Emacs was and still is ahead of its time, the editor with a built
;;in garbage collected language which could also produce native code and the entire editor could be extended and 
;;build using the same language (elisp) a dialect of LISP.

;;Color Theme Package to be installed for everything else 
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")
(require 'color-theme)

;; Interactively Do Things (highly recommended, but not strictly required)
(require 'ido)
   (ido-mode t)
     
;; Rinari
(add-to-list 'load-path "~/.emacs.d/rinari/")
   (require 'rinari)

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.

(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

(setq inhibit-startup-message t)

;;Global TAB-Width
(setq-default tab-width 2)

;;putty Arrow Keys
;;

(global-set-key [M-left] 'windmove-left)          ; move to left windnow
(global-set-key [M-right] 'windmove-right)        ; move to right window
(global-set-key [M-up] 'windmove-up)              ; move to upper window
(global-set-key [M-down] 'windmove-down)          ; move to downer window


;;Lets override backspace
(global-set-key [?\C-h] 'delete-backward-char)
(global-set-key [?\C-x ?h] 'help-command)



;;Dirtree plugin https://github.com/zkim/emacs-dirtree
(require 'dirtree "dirtree" "Add directory to tree view")

;;Color Theme select based on terminal or gui mode
;;(require 'color-theme)
;;(load "~/.emacs.d/emac_themes/almost-monokai/color-theme-almost-monokai.el")
;;(color-theme-almost-monokai)

;;Color Theme select based on terminal or gui mode
(require 'color-theme)
(load "~/.emacs.d/emac_themes/color-theme-molokai/color-theme-molokai.el")
(color-theme-molokai)


;;Pankajs Custom color theme
;;(require 'color-theme)
;;(load "~/.emacs.d/emac_themes/pankajs-color-theme.el")
;;(pankajs-custom-theme)
;;(color-theme-initialize)

;;Amelie color theme based on slim
;;(require 'color-theme)
;;(load "~/.emacs.d/emac_themes/amelie-theme/Amelie-theme.el")
;;(Amelie)


;;Color Theme select based on terminal or gui mode
;;(require 'color-theme)
;;(load "~/.emacs.d/emac_themes/monokai-theme.el")
;;(color-theme-monokai)

;;Color Theme select based on terminal or gui mode
;;(require 'color-theme)
;;(load "~/.emacs.d/emac_themes/color-theme-monokai.el")
;;(color-theme-monokai)


;;Black theme
;;(require 'color-theme)
;;(color-theme-black)

;;Rails Casts Colortheme
;;(require 'color-theme)
;;(color-theme-initialize)
;;(load-file "~/.emacs.d/emac_themes/color-theme-railscasts.el")
;;(color-theme-railscasts)

;;Less CSS Major mode
(load "~/.emacs.d/elpa/less-css-mode.el")
(less-css-mode)

;;Dirtree pointing current directory

(defun ep-dirtree ()
  (interactive)
  (dirtree-in-buffer eproject-root t))

;;Solarized Dark Theme

;;(add-to-list 'load-path "~/.emacs.d/emac_themes/emacs-color-theme-solarized/")
;;(require 'color-theme-solarized)
;;(color-theme-solarized-dark)


;;Default desktop save mode
(desktop-save-mode 1)


;;Maximize variables based on terminal or not

;;Toggle menu bar mode from frame
(toggle-menu-bar-mode-from-frame)

;;"Undo" redo using C-c <left>/<right> also useful in switching to previous window configuration.
(when (fboundp 'winner-mode)
      (winner-mode 1))

;;Scrollbar only when window mode and toolbar.
;;(scroll-bar-mode -1)
;;(tool-bar-mode -1)

;;Set Cursor Color
(setq default-frame-alist
  '((cursor-color . "red")))

;;Icicles Library "Autocompletion"
;;(load "~/.emacs.d/elpa/icicles-install.el")

;;Emacs-textmate
(add-to-list 'load-path "~/.emacs.d/emacs-textmate")
(require 'textmate)
(tm/initialize)

;;Enable Ruby MOde By Default
;;(ruby-mode)
(rinari-minor-mode)
(put 'upcase-region 'disabled nil)

;;Delete Selection mode C-d
(delete-selection-mode t)

;;Coffee Script Major Mode
(add-to-list 'load-path "~/.emacs.d/coffee-mode")
(require 'coffee-mode)

;;Enable Rinari mode by default
;;Major mode for editing embedded ruby scripts css and Gemfile.
(autoload 'ruby-mode "ruby-mode" "Major mode for editing ruby scripts." t)
(setq auto-mode-alist  (cons '(".rb$" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '("Gemfile" . ruby-mode) auto-mode-alist))
(setq auto-mode-list   (cons '(".coffee.erb$" . coffee-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '(".erb$" . html-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '(".css.less$" . css-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '(".css$" . css-mode) auto-mode-alist))
(setq auto-mode-list   (cons '(".js.coffee$" . coffee-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '("Cakefile" . coffee-mode) auto-mode-alist))


;;Tabbar-mode
(add-to-list 'load-path "~/.emacs.d/tabbar")
(require 'tabbar)
(tabbar-mode)

;;Tabbed switching with SHIFT-TAB <backtab>
(global-set-key [backtab] 'tabbar-forward)

;;Autocomplete Mode 
;;https://github.com/m2ym/auto-complete.git
;;

;;(add-to-list 'load-path "~/.emacs.d/auto-complete")
;;(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
;;(require 'auto-complete-config)
;;(ac-config-default)

;;Zone Mode Autostart --> This depends on external xtrlock package on Debian/Gnu linux system 
;;Please install xtrlock using any of the pkg managers like apt-get , brew etc...

;;(defun zone-lock ()
;;	(message "Lock screen using (zone) and xtrlock 
;;calls M-x zone on all frames and runs xtrlock")
;;	(interactive)
;;	(save-excursion
	;;(shell-command "xtrlock &")
	;;(set-process-sentinel
		 ;;(start-process "xtrlock" nil "xtrlock")
		 ;;(lambda (process event)
		 ;;	(zone-leave-me-alone)))
;;	(zone 1)))

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

;;Typing Of emacs
(load "~/.emacs.d/typing.el")
(autoload 'typing-of-emacs "typing" "The Typing Of Emacs, a game." t)

;;Edit With Emacs Server
(load "~/.emacs.d/edit-server.el")
(require 'edit-server)
(edit-server-start)

(setq whitespace-action '(auto-cleanup)) ;; automatically clean up bad whitespace
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab)) ;; only show bad whitespace

;;Auto Zoning in 50 seconds

