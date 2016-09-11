(require 'auto-complete-config)
(global-auto-complete-mode t)

;; 按下TAB时首先缩进所在行，然后尝试补全
(setq tab-always-indent 'complete)

(setq ac-delay 0.08)
(setq ac-auto-show-menu 0.08)

;; Use C-n/C-p to select candidate ONLY when completion menu is displayed
;; Below code is copied from official manual
(setq ac-use-menu-map t)
;; Default settings
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

(provide 'init-auto-complete)
