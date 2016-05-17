(require 'org)

(setq org-agenda-files '("~/.emacs.d"))(setq org-capture-templates
      '(("t" "TODO" entry (file+headline "~/.emacs.d/gtd.org" "工作安排")
	 "* TODO [#B] %?\n %i\n"
	 :empty-lines 1)))

(global-set-key (kbd "C-c r") 'org-capture)

(provide 'init-org)
