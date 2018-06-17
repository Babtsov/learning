(global-linum-mode 1)
(setq linum-format "%4d\u2502") ;; nice formatting for linum
(menu-bar-mode -1)
(winner-mode 1)
(defalias 'yes-or-no-p 'y-or-n-p) ;; enough to write just y/n
(defalias 'list-buffers 'ibuffer) ;; make ibuffer default

;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
