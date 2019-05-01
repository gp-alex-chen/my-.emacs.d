(require 'org)

(setq org-agenda-files '("~/.emacs.d"))

(setq org-confirm-babel-evaluate nil)

(setq org-capture-templates
      '(("t" "TODO" entry (file+headline "~/.emacs.d/gtd.org" "工作安排")
	 "* TODO [#B] %?\n %i\n"
	 :empty-lines 1)))

(global-set-key (kbd "C-c r") 'org-capture)

;; turn on soft wrapping mode for org mode
(setq geiser-default-implementation 'guile)

(add-hook 'org-mode-hook
(lambda () (setq truncate-lines nil)))

(setq org-startup-indented t)

(org-babel-do-load-languages
      'org-babel-load-languages
      '((emacs-lisp . t)
	(sh . t)
        (java . t)
	(C . t)
	(scheme . t)
        ;; (R . t)
	))
(setq org-src-fontify-natively t) 

(setq scheme-program-name "guile")

;; 图片大小

(setq org-image-actual-width '(600))

;; 设置 org 语法高亮
(require 'org)
(require 'htmlize)
(setq org-src-fontify-natively t)

;; 忽略 "_" 
(setq-default org-use-sub-superscripts nil)

;; 标题大小递减
(set-face-attribute 'org-level-1 nil :height 1.3 :bold t)
(set-face-attribute 'org-level-2 nil :height 1.2 :bold t)
(set-face-attribute 'org-level-3 nil :height 1.1 :bold t)

(provide 'init-org)
