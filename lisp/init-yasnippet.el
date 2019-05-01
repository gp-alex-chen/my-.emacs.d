(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"))
(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)
(provide 'init-yasnippet)
