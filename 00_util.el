(package-initialize)
(init-loader-load)

;; eng minibuff
(when (functionp 'mac-auto-ascii-mode)
  (mac-auto-ascii-mode 1))

;; exec path from shell
(exec-path-from-shell-initialize)
