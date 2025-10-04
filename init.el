;; Point to root of emacs.d and additional directories.
(setq path "~/.emacs.d")
(setq additional-path "~/.emacs-additional.d")

;; Enable and dissable modules by setting them t or nil.
(setq programming t)
(setq literate t)
(setq org-roam t)
(setq calendar t)


;; Enable or dissable additional config and software. (Langtool, PlantUML and config)
(setq additional nil)

(setq package-enable-at-startup nil)

;; Packaging configuration
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

;; Load base config.
(org-babel-load-file "~/.emacs.d/general.org")

;; Load modules that are t.
(when programming
  (org-babel-load-file (concat path "/modules/programming.org")))

(when literate
  (org-babel-load-file (concat path "/modules/org-roam.org")))

(when calendar
  (org-babel-load-file (concat path "/modules/org-calendar.org")))


(when additional
  (org-babel-load-file (concat additional-path "/config.org")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("691d671429fa6c6d73098fc6ff05d4a14a323ea0a18787daeb93fde0e48ab18b"
     default))
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
