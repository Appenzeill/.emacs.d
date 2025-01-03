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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-vc-selected-packages
   '((denote-search :url "https://github.com/lmq-10/denote-search" :doc "README.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fringe ((t :background "#282828")))
 '(header-line ((t :box (:line-width 4 :color "#37302f" :style nil))))
 '(header-line-highlight ((t :box (:color "#ebdbb2"))))
 '(keycast-key ((t)))
 '(line-number ((t :background "#282828")))
 '(mode-line ((t :box (:line-width 6 :color "#37302f" :style nil))))
 '(mode-line-active ((t :box (:line-width 6 :color "#37302f" :style nil))))
 '(mode-line-highlight ((t :box (:color "#ebdbb2"))))
 '(mode-line-inactive ((t :box (:line-width 6 :color "#282828" :style nil))))
 '(tab-bar-tab ((t :box (:line-width 4 :color "#282828" :style nil))))
 '(tab-bar-tab-inactive ((t :box (:line-width 4 :color "#1d2021" :style nil))))
 '(tab-line-tab ((t)))
 '(tab-line-tab-active ((t)))
 '(tab-line-tab-inactive ((t)))
 '(vertical-border ((t :background "#282828" :foreground "#282828")))
 '(window-divider ((t (:background "#282828" :foreground "#282828"))))
 '(window-divider-first-pixel ((t (:background "#282828" :foreground "#282828"))))
 '(window-divider-last-pixel ((t (:background "#282828" :foreground "#282828")))))
