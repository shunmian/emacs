(require 'cl)

 (when (>= emacs-major-version 24)
   (require 'package)
     (setq package-archives '(("gnu"   . "https://elpa.gnu.org/packages/")
                      ("melpa" . "https://melpa.org/packages/"))))

 ;; Add Packages
 (defvar my/packages '(
                ;; --- Auto-completion ---
                company
		;; --- Better Editor ---
                hungry-delete
                swiper
                counsel
                smartparens
                ;; --- Major Mode ---
                js2-mode
                ;; --- Minor Mode ---
                nodejs-repl
                exec-path-from-shell
                ;; --- Themes ---
                monokai-theme
                ;; solarized-theme
		popwin
		reveal-in-osx-finder
		web-mode
		js2-refactor
		iedit
                ) "Default packages")

(setq package-selected-packages my/packages)
 (defun my/packages-installed-p ()
     (loop for pkg in my/packages
           when (not (package-installed-p pkg)) do (return nil)
           finally (return t)))

 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
         (package-install pkg))))


;; Find Executable Path on OS X
(when (memq window-system '(mac ns))
   (exec-path-from-shell-initialize))

(require 'hungry-delete)
(global-hungry-delete-mode)
(smartparens-global-mode t)
(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       '(("\\.html\\'" . web-mode))
       auto-mode-alist))

;(add-to-list 'auto-mode-alist `(,(rx ".js" string-end) . js2-mode))

(global-company-mode t)
(load-theme 'monokai t)

(require 'popwin)
(popwin-mode t)

;; js2-refactor config
(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-m")

(provide 'init-packages)
