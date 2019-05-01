(require 'multiple-cursors)
(global-set-key (kbd "M-<mouse-1>") 'mc/add-cursor-on-click)

(global-set-key (kbd "M-N") 'mc/mark-next-like-this)
;; ((kbd "M-P") 'mc/mark-previous-like-this global-set-key)

(provide 'init-multiple-cursors)
