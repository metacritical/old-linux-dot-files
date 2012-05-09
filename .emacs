;; Interactively Do Things (highly recommended, but not strictly required)
(require 'ido)
   (ido-mode t)
     
;; Rinari
(add-to-list 'load-path "~/.emacs.d/rinari")
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

;;putty Arrow Keys
;;

(global-set-key [M-left] 'windmove-left)          ; move to left windnow
(global-set-key [M-right] 'windmove-right)        ; move to right window
(global-set-key [M-up] 'windmove-up)              ; move to upper window
(global-set-key [M-down] 'windmove-down)          ; move to downer window

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

;;Black theme
;;(require 'color-theme)
;;(black)




;;Dirtree pointing current directory
;;

(defun ep-dirtree ()
  (interactive)
  (dirtree-in-buffer eproject-root t))

;;Solarized Dark Theme
;;

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

;;Enable Rinari mode by default
(autoload 'ruby-mode "ruby-mode" "Major mode for editing ruby scripts." t)
(setq auto-mode-alist  (cons '(".rb$" . ruby-mode) auto-mode-alist))
;;
(autoload 'ruby-mode "ruby-mode" "Major mode for editing ruby scripts." t)
(setq auto-mode-alist  (cons '(".erb$" . ruby-mode) auto-mode-alist))
;;
;;(autoload 'ruby-mode "ruby-mode" "Major mode for editing ruby scripts." t)
;;(setq auto-mode-alist  (cons '("Gemfile" . ruby-mode) auto-mode-alist))
;;
;;(autoload 'html-mode "html-mode" "Major mode for editing embedded ruby scripts." t)
(setq auto-mode-alist  (cons '(".erb$" . html-mode) auto-mode-alist))


;;Tabbar-mode
(add-to-list 'load-path "~/.emacs.d/tabbar")
(require 'tabbar)
(tabbar-mode)

;;Tabbed switching with SHIFT-TAB <backtab>
(global-set-key [backtab] 'tabbar-forward)

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))
