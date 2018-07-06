;; enable linum only for conventional modes
(add-hook 'text-mode-hook 'linum-mode)
(add-hook 'prog-mode-hook 'linum-mode)
(setq linum-format "%4d\u2502") ;; nice formatting for linum

(menu-bar-mode -1) ;; disable menubar
(winner-mode 1)    ;; winner to quickly restore window config
(defalias 'yes-or-no-p 'y-or-n-p) ;; enough to write just y/n
(defalias 'list-buffers 'ibuffer) ;; make ibuffer default
(windmove-default-keybindings) ;; use shift + arrows to move between windows

(global-set-key (kbd "C-x m") 'imenu) ;; bind to imenu instead of mail
(global-set-key (kbd "C-x r") 'gdb-restore-windows) ;; reload when in gdb-many-windows

(electric-pair-mode 1) ;; autocomplete parenthesis
(setq tags-revert-without-query 1) ;; if tag file changes, reload it without asking


;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))


;; helm specific config

(require 'helm-config)
(helm-mode 1)
(define-key global-map [remap find-file] 'helm-find-files)
(define-key global-map [remap occur] 'helm-occur)
(define-key global-map [remap list-buffers] 'helm-buffers-list)
(define-key global-map [remap dabbrev-expand] 'helm-dabbrev)
(define-key global-map [remap execute-extended-command] 'helm-M-x)

(global-set-key (kbd "C-s")  'swiper-helm)

;; Make Helm window at the bottom WITHOUT using any extra package
;; https://www.reddit.com/r/emacs/comments/345vtl/make_helm_window_at_the_bottom_without_using_any/
(add-to-list 'display-buffer-alist
                    `(,(rx bos "*helm" (* not-newline) "*" eos)
                         (display-buffer-in-side-window)
                         (inhibit-same-window . t)
                         (window-height . 0.4)))
