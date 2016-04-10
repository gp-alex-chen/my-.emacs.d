
;; 添加 lisp 目录
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#ad7fa8" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(org-agenda-files (quote ("~/Documents/web/note.org")))
 '(org-export-html-style "" nil nil "<style type=\"text/css\">
       <![CDATA[
          p { font-weight: normal; color: gray; }
          h1 { color: black; }
         .title { text-align: center; }
         .todo, .timestamp-kwd { color: red; }
         .done { color: green; }
       ]]>
      </style>")
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



;;改变Emacs要你回答yes的行为。按y或空格键表示yes，n表示no。
(fset 'yes-or-no-p 'y-or-n-p)

;;打开括号匹配显示模式
(setq show-paren-mode t)

;;括号匹配时可以高亮显示另外一边的括号，但光标不会烦人的跳到另一个括号处。
(setq show-paren-style 'parenthesis)

;;设置f9调用speedbar命令
(global-set-key [f9] 'speedbar)

;;关闭emacs启动时的画面
(setq inhibit-startup-message t)


(tool-bar-mode -1)

;; turn on soft wrapping mode for org mode
(add-hook 'org-mode-hook
(lambda () (setq truncate-lines nil)))


(setq org-startup-indented t)

(org-babel-do-load-languages
      'org-babel-load-languages
      '((emacs-lisp . t)
        (java . t)
	(C . t)
	(scheme . t)
        (R . t)))

(setq org-src-fontify-natively t) 

(setq scheme-program-name "guile")  

(require 'init-elpa)    ;; 加载ELPA，并定义了require-package函数
(require 'init-auto-complete) 
(require 'init-smex)
;; (require 'init-helm)
(require 'chinese-fonts-setup)
(require 'init-acg)
(provide 'init)

(put 'upcase-region 'disabled nil)

(setq x-select-enable-clipboard t)
