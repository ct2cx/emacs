(setq-default display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-face-attribute 'default nil :family "IosevkaTerm Nerd Font" :height 150)

(defun reload-init-file()
  ; makes the function callable interactively using M-x reload-init-file.
  (interactive)
  (load-file user-init-file)
  (message "Configuration reloaded"))
