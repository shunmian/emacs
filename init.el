(package-initialize)
(add-to-list 'load-path "~/.emacs.d")

(require 'init-packages)

;; (global-set-key (kbd "M-x") 'smex)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

(tool-bar-mode -1)
(scroll-bar-mode -1)
(electric-indent-mode t)
(setq inhibit-splash-screen t)
(global-linum-mode t)
(global-auto-revert-mode t)

(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el")
)

(global-set-key (kbd "<f9>") 'open-my-init-file)

(setq-default cursor-type 'bar)

(require 'recentf)
(recentf-mode t)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(delete-selection-mode t)


(setq make-backup-files nil)
(setq auto-save-default nil)
(require 'org)
(setq org-src-fontify-natively t)

(setq initial-frame-alist (quote ((fullscreen . maximized))))

(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("8ms" "Microsoft")))
					    


;- turn off tool-bar
;- turn off scroll-bar fdsaf
;- show linum-mode
;- turn off splash screen
;- save your config
;- define a function to quickly open your config file

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
(global-hl-line-mode t)


(setq ring-bell-function 'ignore)






(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.08)
 '(package-selected-packages (quote (company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
