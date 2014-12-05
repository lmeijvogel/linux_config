; Found on http://batsov.com/articles/2012/02/19/package-management-in-emacs-the-good-the-bad-and-the-ugly/

(defvar default-packages

  '(ack-and-a-half
    evil
    evil-surround
    evil-nerd-commenter
    evil-leader
    evil-matchit

    pomodoro

    helm
    projectile
    helm-projectile
    neotree

    linum-relative
    undo-tree
    clippy
    org
    magit

    coffee-mode
    inf-ruby
    enh-ruby-mode
    rspec-mode
    haskell-mode
    scala-mode2
    js2-mode
)
  "A list of packages to ensure are installed at launch.")

(defun default-packages-installed-p ()
  (loop for p in default-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (default-packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p default-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(provide 'default-packages)
