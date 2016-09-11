 ;; 添加 lisp 目录

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; 加载ELPA，并定义了require-package函数
(require 'init-elpa)
;; 加载 config
(require 'init-emacs-config)
;; 补全
(require 'init-auto-complete)
;; smex
(require 'init-smex)
;; helm
(require 'init-helm)
;; 加载主题
;; (load-theme 'monokai t)
;; (load-theme 'darcula t)
;; (load-theme 'solarized-light t)
;; 连删
(require 'hungry-delete)
;; 括号匹配
(require 'init-smartparens)

;; popwin
(require 'popwin)
(popwin-mode t)

;; org
(require 'init-org)
;; org-pomodoro
(require 'org-pomodoro)
;; acg
(require 'init-acg)

;; font
(require 'chinese-fonts-setup)

;; 美化 major-mode
(require 'init-major-mode-ui)

;; window numbering
(require 'init-window-numbering)

;; youdao
(require 'init-youdao)
;; (setq url-automatic-caching t)
;; (global-set-key (kbd "M-i") 'youdao-dictionary-search)

;; scheme
(require 'init-scheme)

;; git gutter
(require 'init-git-gutter)

;; mc
(require 'init-multiple-cursors)

;; lispy
(require 'init-lispy)

;; 自定义
(require 'init-custom)

(defun load-history-filename-element (file-regexp)
  "Get the first elt of `load-history' whose car matches FILE-REGEXP.
        Return nil if there isn't one."
  (let* ((loads load-history)
         (load-elt (and loads (car loads))))
    (save-match-data
      (while (and loads
                  (or (null (car load-elt))
                      (not (and (stringp (car load-elt)) ; new condition
                                (string-match file-regexp (car load-elt))))))
        (setq loads (cdr loads)
              load-elt (and loads (car loads)))))
    load-elt))

(provide 'init)
;;--------------------- custom  ---------------------;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("c697b65591ba1fdda42fae093563867a95046466285459bd4e686dc95a819310" default)))
 '(package-selected-packages
   (quote
    (sicp auto-complete auto-complete-clang company ace-jump-mode ag async chinese-fonts-setup color-theme dash expand-region flycheck iedit helm helm-projectile helm-ag htmlize hungry-delete smex lispy helm-swoop helm-ls-git smartparens nodejs-repl popwin org-pomodoro window-numbering powerline git-gutter multiple-cursors solarized-theme magit darcula-theme ox-latex-chinese youdao-dictionary))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
