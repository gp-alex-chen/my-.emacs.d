(require 'auto-complete-config)
(global-auto-complete-mode t)

;; 按下TAB时首先缩进所在行，然后尝试补全
(setq tab-always-indent 'complete)

(setq ac-delay 0.08)
(setq ac-auto-show-menu 0.08)
;; 阻止自动触发补全动作
;; (setq-default ac-expand-on-auto-complete nil) 
;; (setq-default ac-auto-start nil)
;; 用TAB作为手动触发补全动作的快捷键
(ac-set-trigger-key "TAB")

(provide 'init-auto-complete)
