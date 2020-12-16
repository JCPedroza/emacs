;; MELPA repository
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Company
(setq company-idle-delay 0)

;; Global minor modes
(electric-pair-mode t)
(global-display-line-numbers-mode t)
(column-number-mode t)
(show-paren-mode 1)

;; Global settings
(setq-default show-trailing-whitespace t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq-default indent-tabs-mode nil)

;; Backups in one directory
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)

;; Themes
(load-theme 'zenburn t)
