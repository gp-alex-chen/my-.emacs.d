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

;;mc
(require 'init-multiple-cursors)
;; 加载主题
(load-theme 'monokai t)
;; (load-theme 'drcula t)
;; (load-theme 'solarized-light t)
;; 连删
(require 'hungry-delete)
;; 括号匹配
(require 'init-smartparens)

;; yasnippet
(require 'init-yasnippet)

;; popwin
(require 'popwin)
(popwin-mode t)

;; org
(require 'init-org)

;; window numbering
(require 'init-window-numbering)

;; youdao
(require 'init-youdao)
;; (setq url-automatic-caching t)
;; (global-set-key (kbd "M-i") 'youdao-dictionary-search)

;; scheme
;; (require 'init-scheme)

;; git gutter
(require 'init-git-gutter)

;; mc
(require 'init-multiple-cursors)

;; lispy
(require 'init-lispy)

(require 'init-js2-mode)

;; 自定义
(require 'init-custom)			

(provide 'init)
;;--------------------- custom  ---------------------;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (yasnippet-snippets yasnippet web-mode auto-complete auto-complete-clang ace-jump-mode ag async color-theme dash expand-region flycheck git-gutter helm helm-projectile helm-ag helm-swoop helm-ls-git htmlize hungry-delete iedit lispy multiple-cursors magit js2-mode ac-js2 nodejs-repl popwin powerline smex smartparens monokai-theme window-numbering youdao-dictionary))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
