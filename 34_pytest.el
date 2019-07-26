(defun interrupt-and-pytest-pdb-one ()
  "Interrupt old compilation, if any, and rerun test."
  (interactive)
;  (ignore-errors (kill-compilation))
  (ignore-errors (delete-process (get-process "comint")))
  (pytest-pdb-one))

(defun pytest-module-failed ()
  "Run only failed tests in a module."
  (interactive)
  (ignore-errors (delete-process (get-process "comint")))
  (pytest-module "--lf"))

;; pytest
(use-package pytest
  :init
  (setq python-mode-map-prefix (kbd "C-x t"))
  :bind
  ( :map python-mode-map
         ("C-x t a" . pytest-all)
         ("C-x t m" . pytest-module-failed)
         ("C-x t ." . pytest-one)
         ("C-x t d" . pytest-directory)
         ("C-x p a" . pytest-pdb-all)
         ("C-x p m" . pytest-pdb-module)
         ("\M-return" . interrupt-and-pytest-pdb-one) ; pytest-pdb-one)
         )
    )
;(define-key python-mode-map (kbd "M-<return>") #'pytest-pdb-one)
;(global-set-key (kbd "M-<return>") 'interrupt-and-pytest-pdb-one)


(global-set-key (kbd "M-RET") 'interrupt-and-pytest-pdb-one) ; pytest-pdb-one)    ;
;(global-set-key (kbd "M-S-RET") 'pytest-pdb-module)    ; this does not work.

;; to avoid error in pytest-pdb
(setq python-shell--interpreter nil)
(setq python-shell--interpreter-args nil)


;;; package-install pytest
(add-hook 'python-mode-hook
          (lambda ()
            (local-set-key "\C-ca" 'pytest-all)
            (local-set-key "\C-cm" 'pytest-module)
            (local-set-key "\C-c." 'pytest-one)
            (local-set-key "\C-cd" 'pytest-directory)
            (local-set-key "\C-cpa" 'pytest-pdb-all)
            (local-set-key "\C-cpm" 'pytest-pdb-module)
            (local-set-key "\M-return" 'pytest-pdb-one)
            (local-set-key "\C-cp." 'pytest-pdb-one)))
