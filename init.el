;; Point to root of emacs.d and additional directories.
(setq path "~/.emacs.d")
(setq additional-path "~/.emacs-additional.d")

;; Enable and dissable modules by setting them t or nil.
(setq programming t)
(setq literate t)
(setq org-roam t)

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

(when additional
  (org-babel-load-file (concat additional-path "/config.org")))
