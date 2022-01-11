;; setting up straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
	(expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
      (url-retrieve-synchronously
	"https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
	'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; menu bar
(menu-bar-mode -1)
(tool-bar-mode -1)

;; installing packages
(straight-use-package 'use-package)
(use-package modus-themes :straight t)
(use-package doom-modeline :straight t)
(use-package evil :straight t)
;; (use-package)

;; setting custom-file
(setq custom-file "~/.config/.custom.el")
(load custom-file)

;; setting visual configuration
(load-theme 'modus-vivendi)
(doom-modeline-mode 1)
(set-frame-font "JetBrains Mono 13" nil t)

;; evil-mode
(evil-mode 1)

;; disabling splahes
(setq inhibit-startup-message t) 
(setq initial-scratch-message nil)
