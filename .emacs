;;In the Unix Apostolic tradition, emacs stands as the bridge of time that spans TECO to Modern Computers.
;;Stallman wrote the first set of editor macros in 1976 for TECO which became emacs. Emacs has stood the test of time 
;;and is the most extensible editor known to man. Emacs was and still is ahead of its time, the editor with a built
;;in garbage collected language which could also produce native code and the entire editor could be extended and 
;;build using the same language (elisp) a dialect of LISP.

;;Set terminal Coding System
(set-terminal-coding-system 'utf-8-auto)


;;Color Theme Package to be installed for everything else 
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")
(require 'color-theme)

;; Interactively Do Things (highly recommended, but not strictly required)
(require 'ido)
   (ido-mode t)
     
;; Rinari
(add-to-list 'load-path "~/.emacs.d/rinari/")
   (require 'rinari)


;; Cucumber
(add-to-list 'load-path "~/.emacs.d/cucumber.el/")
(when 
		(load "~/.emacs.d/cucumber.el/feature-mode.el")
	(require 'feature-mode)
	(require 'cucumber-mode))

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


;; Marmalade repo
(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

;;jabber libnotify
(when
    (load
     (expand-file-name  "~/.emacs.d/jabber-libnotify.el")))

;;Global TAB-Width
(setq-default tab-width 2)

;;putty Arrow Keys
(global-set-key [M-left] 'windmove-left)          ; move to left windnow
(global-set-key [M-right] 'windmove-right)        ; move ton right window
(global-set-key [M-up] 'windmove-up)              ; move to upper window
(global-set-key [M-down] 'windmove-down)          ; move to downer window

;;Lets override backspace
(global-set-key [?\C-h] 'delete-backward-char)
(global-set-key [?\C-x ?h] 'help-command)

;;Override C-x with caps

;;Dirtree plugin https://github.com/zkim/emacs-dirtree
(require 'dirtree "dirtree" "Add directory to tree view")

;;Color Theme select based on terminal or gui mode
;;(require 'color-theme)
;;(load "~/.emacs.d/emac_themes/almost-monokai/color-theme-almost-monokai.el")
;;(color-theme-almost-monokai)

;;Color Theme select based on terminal or gui mode
;;(require 'color-theme)
;;(load "~/.emacs.d/emac_themes/color-theme-molokai/color-theme-molokai.el")
;;(color-theme-molokai)

;;Color Theme select based on terminal or gui mode
;;(load "~/.emacs.d/pankajs-molokai-modification-theme.el")

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
(color-theme-initialize)
(load-file "~/.emacs.d/emac_themes/color-theme-railscasts.el")
(color-theme-railscasts)

;;Color Theme TTY Dark
;;(require 'color-theme)
;;(color-theme-initialize)
;;(color-theme-tty-dark)

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
(toggle-menu-bar-mode-from-frame -1)

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

;;Coffee Mode trailing White Space using whitespace-mode
(setq whitespace-action '(auto-cleanup)) ;; automatically clean up bad whitespace
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab));; Only Show bad Whitespaces

;;Enable Rinari mode by default
;;Major mode for editing embedded ruby scripts css and Gemfile.
(autoload 'ruby-mode "ruby-mode" "Major mode for editing ruby scripts." t)
(setq auto-mode-alist  (cons '(".rb$" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '("Gemfile" . ruby-mode) auto-mode-alist))
(setq auto-mode-list   (cons '(".coffee.erb" . coffee-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '(".erb$" . html-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '(".css.less$" . css-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '(".css$" . css-mode) auto-mode-alist))
(setq auto-mode-list   (cons '(".js.coffee$" . coffee-mode) auto-mode-alist))
(setq auto-mode-list   (cons '(".jst.ejs" . html-mode) auto-mode-alist))
(setq auto-mode-alist  (cons '("Cakefile" . coffee-mode) auto-mode-alist))

;;Tabbar-mode
(add-to-list 'load-path "~/.emacs.d/tabbar/")
(require 'tabbar)
(tabbar-mode)

;;Tabbed switching with SHIFT-TAB <backtab>
(global-set-key [backtab] 'tabbar-forward)
;;(global-set-key (read-kbd-macro "C-[") 'tabbar-backward)
;;Skype Emacs
;;(defun my-skype()
;;	(add-to-list 'load-path "~/.emacs.d/emacs-skype/")
;;	(require 'skype)
;;	(setq skype--my-user-handle "pankaj.doharey@softwebsolutions.com")
;;	(skype--init)
;;	(interactive)
;;)(my-skype)

;;Autocomplete Mode 
;;https://github.com/m2ym/auto-complete.git
;;

;;(add-to-list 'load-path "~/.emacs.d/auto-complete")
;;(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
;;(require 'auto-complete-config)
;;(ac-config-default)

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

;;Js2 Enhanced Javascript Mode
(load "~/.emacs.d/js2-mode/js2-mode.el")
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;;Load Flymake (Universal On the fly makefile and syntax checker)
(load "~/.emacs.d/emacs-flymake/flymake.el")

;;Load Flymake JS MODE
(load "~/.emacs.d/flymake-js/flymake-js.el")
(require 'flymake-js)

;;Flymake JSLint mode
(load "~/.emacs.d/flymake-js/flymake-jslint.el")
(require 'flymake-jslint)
(add-hook 'js-mode-hook
(lambda () (flymake-mode t)))

;;Auto Zoning in 120 seconds
;;Zone Mode Autostart --> This depends on external xtrlock package on Debian/Gnu linux system 
;;Please install xtrlock using any of the pkg managers like apt-get , brew etc...
(require 'zone)
;;(zone-when-idle 120)
(defun zone-lock ()
	"Lock screen using (zone) and xtrlock calls M-x zone on all frames and runs xtrlock"
	(interactive)
	(save-excursion
		;;(shell-command "xtrlock")
		(set-process-sentinel
		 (start-process "xtrlock" nil "xtrlock")
		 '(lambda (process event)
				(zone-leave-me-alone)))
		(zone-when-idle 120)))

;;			 (zone 1)))
;; ))

;;Org Mode Default 
;; The following lines are always needed.  Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode)) ; not needed since Emacs 22.2
(add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-lock-mode is on
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . nil)
	 (ruby . t)))


;;Syntax highlighting with org mode code blocks
(setq org-src-fontify-natively t)



;;Racc Mode El
(load "~/.emacs.d/racc-mode.el")
(autoload 'racc-mode "racc-mode" "alternate mode for editing racc files" t)
(setq auto-mode-alist (append '(("\\.ry$" . racc-mode)) auto-mode-alist))



;;----------------------------------------------------------------------------------------------------------------------------

(put 'set-goal-column 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("4c33573e9911278be5df7b0529e3d1e56056caa33f05d63247d718576cd33969" "d90d406b5301a2ae6b0c7f3a60f1d02e5ac9314de14de893a2644ccbf625b261" "60ff215642e31dd259dcf91777168b9bd10c04f54d34da75a42cebf7446ea813" "1857cf751da56ffeea35cf8d56511c890eef3d7184b3bfc22607d76bb2586587" default)))
 '(jabber-alert-message-hooks (quote (jabber-message-echo jabber-message-display)))
 '(jabber-alert-presence-hooks nil)
 '(jabber-info-message-alist (quote ((roster . "Roster display updated") (browse . "Browse request completed"))))
 '(safe-local-variable-values (quote ((encoding . utf-8) (ruby-compilation-executable . "ruby") (ruby-compilation-executable . "ruby1.8") (ruby-compilation-executable . "ruby1.9") (ruby-compilation-executable . "rbx") (ruby-compilation-executable . "jruby")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'narrow-to-region 'disabled nil)

