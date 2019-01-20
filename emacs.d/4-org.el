;; This is already the default location, but repeating it
(setq org-directory "~/org")
(setq org-default-notes-file (concat org-directory "/notes.org"))

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c b") 'org-switchb)
