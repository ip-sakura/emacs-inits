;;; indent with s-right, s-left (option is super)
(setq mac-option-modifier 'super)
(require 'windmove)
(setq windmove-wrap-around t)
(global-set-key [s-right] `indent-rigidly-right)
(global-set-key [s-left] `indent-rigidly-left)


(require 'org)
(define-key org-mode-map (kbd "C-<") nil);;; org-modeでhomeに飛ぶkeyを無効にする。
(define-key org-mode-map (kbd "C-,") nil) ;;; xxx上記の補助だが、不要かもしれない。
(add-hook 'before-save-hook 'delete-trailing-whitespace) ;;; saveした時に空白を消す
(setq column-number-mode t) ;; show column
(keyboard-translate ?\C-h ?\C-?) ;; command-h means delete back.
(global-set-key (kbd "M-/") 'comment-or-uncomment-region)

(set-frame-font "Monospace 18" nil t)
(global-linum-mode t)
