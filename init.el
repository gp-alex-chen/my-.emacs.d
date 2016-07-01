;; 添加 lisp 目录
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
;; 加载ELPA，并定义了require-package函数
(require 'init-elpa)
;; 加载 config
(require 'init-emacs-config)
;; 补全
(require 'init-auto-complete)
;; smex
;;(require 'init-smex)
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
(require 'nodejs-repl)
;; mode 使用
(setq auto-mode-alist
      (append
       '(("\\.html\\'" . web-mode)
	 ("\\.css\\'" . web-mode)
	 )
       auto-mode-alist))
(exec-path-from-shell-initialize)

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
;; (require 'init-swiper)

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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
