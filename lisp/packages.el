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
  (setq-default evil-undo-system 'undo-redo)
  (setq-default evil-want-keybinding nil)
  :demand t
  :config (evil-mode 1))

(use-package goto-chg :after evil)

(use-package evil-surround
  :after evil
  :config
  (global-evil-surround-mode 1))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

(use-package ace-window
  :config
  (global-set-key (kbd "M-o") 'ace-window))

(use-package evil-nerd-commenter
  :after evil
  :config
  (evilnc-default-hotkeys nil t)
  (define-key evil-normal-state-map (kbd "gc") 'evilnc-comment-operator)
  (define-key evil-visual-state-map (kbd "gc") 'evilnc-comment-operator))
