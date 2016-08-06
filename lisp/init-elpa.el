(require 'package)
(package-initialize)
;; 增加软件包仓库
;;(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
;;(when (< emacs-major-version 24)
;;  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))) 
;;(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(setq package-archives '(("gnu"   . "http://elpa.zilongshanren.com/gnu/")
                         ("melpa" . "http://elpa.zilongshanren.com/melpa/")))
;; 定义require-package函数
(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
        (package-install package)
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))

;; 强行提前初始化ELPA。因为默认情况下Emacs在init.el加载完之后才开始初始化ELPA，
;; 而我们把大多数包的初始化函数都放在init.el中，如果不提前初始化ELPA会导致后面的
;; 初始化过程出错（对应的包文件还没有加载进来）。

;; 根据 package 列表来自动下载 plugins
(require 'cl)

(defvar my/packages '(
		      auto-complete
		      auto-complete-clang
		      company
		      ace-jump-mode
		      ag
		      async
		      chinese-fonts-setup
		      color-theme
		      dash
		      expand-region
		      flycheck
		      helm
		      helm-projectile
		      htmlize
		      hungry-delete
		      smex
		      helm-swoop
		      helm-ls-git
		      smartparens
		      nodejs-repl
		      popwin
		      org-pomodoro
		      window-numbering
		      powerline
		      git-gutter
		      multiple-cursors
		      solarized-theme
		      magit
		      darcula-theme
		      ox-latex-chinese
		      ) "Default packages")

(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
    (loop for pkg in my/packages
	  when (not (package-installed-p pkg)) do (return nil)
	  finally (return t)))

(unless (my/packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg my/packages)
      (when (not (package-installed-p pkg))
	(package-install pkg))))

(provide 'init-elpa)

