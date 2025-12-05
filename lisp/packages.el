(require 'elpaca)
(elpaca elpaca-use-package
	(elpaca-use-package-mode))

(setq use-package-always-ensure t)

(use-package gruvbox-theme
			 :config
			 (load-theme 'gruvbox t))

(use-package treesit-auto
  :init
  ; langs that would be installed automatically
  (setq treesit-auto-langs
	'(lua bash fish))

  :config
  (global-treesit-auto-mode)
  ; changes fundamental major mode to tree-sitter mode for all supported langs
  (treesit-auto-add-to-auto-mode-alist 'all))

(use-package evil
  :init
  (setq-default evil-want-C-u-scroll t)
  :demand t
  :config (evil-mode 1))
(use-package goto-chg)
