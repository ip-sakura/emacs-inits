(setq-default truncate-lines t);;; 画面右端で折り返さない
;;(setq truncate-partial-width-windows t)

(global-set-key (kbd "C-.") `other-window)
(global-set-key (kbd "C-,") (lambda () (interactive) (other-window -1)))

;;(define-key org-mode-map (kbd "C-<") nil);;; org-modeでhomeに飛ぶkeyを無効にする。
;;(define-key org-mode-map (kbd "C-,") nil) ;;; xxx上記の補助だが、不要かもしれない。
;;(define-key global-map (kbd"C->") 'other-window);;;xxx上記の補助だが、不要かもしれない。
;;(define-key global-map (kbd"C-<") 'prev-window);;;xxx上記の補助だが、不要かもしれない。
;;(define-key global-map (kbd"M-c") (kbd"M-w"));;;copyをmacのコマンドと同じバインドで可能にする。
;;(define-key global-map (kbd"M-R") 'helm-projectile-find-file-in-known-projects);
