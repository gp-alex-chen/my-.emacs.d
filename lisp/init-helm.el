(require-package 'helm)
(require 'helm)
(require 'helm-config)
(require 'helm-swoop)
(require 'helm-ls-git)
;;(require 'helm-dash)

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(helm-mode t)
(helm-autoresize-mode t)
;; 禁止自动补全
(setq helm-ff-auto-update-initial-value nil)

(global-set-key (kbd "C-c x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-s") 'helm-swoop)
(global-set-key (kbd "C-h SPC") 'helm-all-mark-rings)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

;;模糊搜索
(setq helm-split-window-in-side-p           t
      helm-move-to-line-cycle-in-source     t
      helm-ff-search-library-in-sexp        t
      helm-M-x-fuzzy-match                  t
      helm-buffers-fuzzy-matching           t
      helm-locate-fuzzy-match               t
      helm-recentf-fuzzy-match              t
      helm-scroll-amount                    8
      helm-ff-file-name-history-use-recentf t)

(provide 'init-helm)
