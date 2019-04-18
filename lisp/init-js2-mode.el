(require 'js2-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'js-mode-hook 'js2-minor-mode)
(setq js2-mode-show-strict-warnings nil)
(provide 'init-js2-mode)
