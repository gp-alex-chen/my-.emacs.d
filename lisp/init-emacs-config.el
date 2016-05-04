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
(scroll-bar-mode -1)
(global-linum-mode t)

;; 设置 F2 为打开 init.el 快捷键
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-init-file)
;; 不保存文件
(setq make-backup-files nil)
(setq auto-save-default nil)
;; 设置 org 语法高亮
(require 'org)
(setq org-src-fontify-natively t)
;; 高亮括号
(show-paren-mode 1)
;; 设置选词覆盖
(delete-selection-mode t)

;; 高亮显示当前行
(global-hl-line-mode t)

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

;; 无须询问是否递归删除或复制文件
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

;; 不创建每一个目录 buff
(put 'dired-find-alternate-file 'disabled nil)
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

(provide 'init-emacs-config)