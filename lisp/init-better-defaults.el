(setq ring-bell-function 'ignore)
(global-linum-mode t)
(global-auto-revert-mode t)

(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("8ms" "Microsoft")))

(setq make-backup-files nil)
(setq auto-save-default nil)

(require 'recentf)
(recentf-mode t)

(setq recentf-max-menu-items 25)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(delete-selection-mode t)

(electric-indent-mode t)

(provide 'init-better-defaults)
