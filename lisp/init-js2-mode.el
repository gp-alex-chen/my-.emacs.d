(require 'js2-mode)

(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

(require 'nodejs-repl)
;; mode 使用
(setq auto-mode-alist
      (append
       '(("\\.html\\'" . web-mode)
	 ("\\.css\\'" . web-mode)
	 )
       auto-mode-alist))

(setq js2-mode-show-strict-warnings nil)

;; (exec-path-from-shell-initialize)

(add-hook 'js2-mode-hook 'flycheck-mode)

(add-hook 'js2-mode-hook 'js2-minor-mode)

(add-hook 'js2-mode-hook 'hungry-delete-mode)

;; 解决一下快捷键冲突
(define-key js2-mode-map (kbd "M-j") nil)

(provide 'init-js2-mode)
