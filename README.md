# emacs-config
Mijn emacs configuratie gebasseerd op die van matman26.


(package-initialize)

(require 'package)
(require 'use-package)

(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;; Standaard packages.
(use-package evil
	:ensure t)
(evil-mode 1)
	
(use-package org
	:ensure t)

;; Configuratie file.
(org-babel-load-file "/home/daan/.emacs.d/myinit.org")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a22f40b63f9bc0a69ebc8ba4fbc6b452a4e3f84b80590ba0a92b4ff599e53ad0" default)))
 '(gnus-select-method (quote (nnreddit "")))
 '(package-selected-packages
   (quote
    (nnreddit md4rd racer cargo helm use-package gruvbox-theme evil dracula-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
