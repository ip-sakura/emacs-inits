;;; https://qiita.com/Maizu/items/7d8f420817dfeccf4477

;;; yatex
(require 'yatex)                ;; パッケージ読み込み
(add-to-list 'auto-mode-alist '("\\.tex\\'" . yatex)) ;;auto-mode-alistへの追加
(setq tex-command "platex")       ;; 自分の環境に合わせて""内を変えてください
(setq bibtex-command "pbibtex")    ;; 自分の環境に合わせて""内を変えてください
;;reftex-mode
(add-hook 'yatex-mode-hook
          #'(lambda ()
              (reftex-mode 1)
              (define-key reftex-mode-map
                (concat YaTeX-prefix ">") 'YaTeX-comment-region)
              (define-key reftex-mode-map
                (concat YaTeX-prefix "<") 'YaTeX-uncomment-region)))


;;; https://blog.515hikaru.net/entry/2015/11/10/000000

;; (unless (package-installed-p 'yatex)
;;   (package-refresh-contents) (package-install 'yatex)))

;; (autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
;; (setq auto-mode-alist
;;       (append '(("\\.tex$" . yatex-mode)
;;         ("\\.ltx$" . yatex-mode)
;;         ("\\.sty$" . yatex-mode)) auto-mode-alist))
;; ;; set YaTeX coding system
;; (setq YaTeX-kanji-code 4) ; UTF-8 の設定
;; (add-hook 'yatex-mode-hook
;;       '(lambda ()
;;          (setq YaTeX-use-AMS-LaTeX t) ; align で数式モードになる
;;          (setq YaTeX-use-hilit19 nil
;;            YateX-use-font-lock t)
;;          (setq tex-command "em-latexmk.sh") ; typeset command
;;          (setq dvi2-command "evince") ; preview command
;;          (setq tex-pdfview-command "xdg-open"))) ; preview command
