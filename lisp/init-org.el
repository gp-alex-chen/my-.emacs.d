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
        (java . t)
	(C . t)
	(scheme . t)
        (R . t)))
(setq org-src-fontify-natively t) 

(setq scheme-program-name "guile")

;; 图片大小

(setq org-image-actual-width '(600))

;; latex
(require 'ox-latex)
(unless (boundp 'org-latex-classes)
  (setq org-latex-classes nil))
(add-to-list 'org-latex-classes
             '("article"
               "\\documentclass{article}"
               ("\\section{%s}" . "\\section*{%s}")))

(provide 'init-org)
