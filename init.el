 ;; 添加 lisp 目录
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
;; (load-theme 'drcula t)
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
;; (require 'org-pomodoro)
;; acg
;; (require 'init-acg)

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
;; (require 'init-scheme)

;; git gutter
(require 'init-git-gutter)

;; mc
(require 'init-multiple-cursors)

;; lispy
(require 'init-lispy)

;; 自定义
(require 'init-custom)

(provide 'init)
;;--------------------- custom  ---------------------;

