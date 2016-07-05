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
(load-theme 'monokai t)
;; 连删
(require 'hungry-delete)
;; 括号匹配
(require 'smartparens-config)

;; js 相关
(require 'init-js2mode)

;; popwin
(require 'popwin)
(popwin-mode t)

;; org
(require 'init-org)
;; org-pomodoro
(require 'org-pomodoro)
;; acg
(require 'init-acg)
;; swiper
;;(require 'init-swiper)

;; flycheck
(add-hook 'js2-mode-hook 'flycheck-mode)

;; expand-region
(global-set-key (kbd "C-=") 'er/expand-region)

;; font
(require 'chinese-fonts-setup)

;; window numbering
(window-numbering-mode 1)
(require 'powerline)
(powerline-default-theme)

;; youdao
(setq url-automatic-caching t)

(provide 'init)

;;;;;;;;;;;;;;;;;;;;   end   ;;;;;;;;;;;;;;;;;;;;;;;;

