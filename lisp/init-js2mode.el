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
(exec-path-from-shell-initialize)
(provide 'init-js2mode)
