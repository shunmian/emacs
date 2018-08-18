(require 'org)
(setq org-src-fontify-natively t)

(setq org-agenda-files '("~/org"))
(global-set-key (kdb "C-c a") 'org-agenda)

(provide 'init-org)
