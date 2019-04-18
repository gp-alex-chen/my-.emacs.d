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
;; (load-theme 'material t)
(load-theme 'solarized-light t)
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
;; 
(require 'init-scheme)
;; git gutter
(require 'init-git-gutter)
;; mc
(require 'init-multiple-cursors)
;; lispy
(require 'init-lispy)
;; 代码块
(require 'init-yasnippet)

;; js2-mode
(require 'init-js2-mode)
;; 自定义
(require 'init-custom)

;; python
(require 'init-python)

(require 'init-nov)

(provide 'init)

;;--------------------- custom  ---------------------;;

(setq ring-bell-function 'ignore)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (js2-mode nov ereader challenger-deep-theme auto-complete auto-complete-clang company ace-jump-mode ag async chinese-fonts-setup color-theme dash expand-region flycheck iedit helm helm-projectile helm-ag htmlize hungry-delete smex lispy helm-swoop helm-ls-git smartparens nodejs-repl popwin org-pomodoro window-numbering powerline git-gutter multiple-cursors solarized-theme magit darcula-theme ox-latex-chinese youdao-dictionary))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
