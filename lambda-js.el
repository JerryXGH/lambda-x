;;; lambda-js.el --- JavaScript

;;; Commentary:

;;; Code:

(require 'lambda-core)

;; js2-mode --------------------------------------------------------------------
(lambda-package-ensure-install 'js2-mode)
(require 'js2-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

;; rjsx-mode--------------------------------------------------------------------
(lambda-package-ensure-install 'rjsx-mode)
(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))

;; tern: a stand-alone code-analysis engine for JavaScript ---------------------
;; Here we use tern and auto-complete to complete JavaScript
(lambda-package-ensure-install 'tern)
(lambda-package-ensure-install 'tern-auto-complete)
(setq tern-command (cons (executable-find "tern") '()))

(eval-after-load 'tern
  '(progn
	 (require 'tern-auto-complete)
	 (tern-ac-setup)
	 (diminish 'tern-mode)))

;; nodejs-repl -----------------------------------------------------------------
(lambda-package-ensure-install 'nodejs-repl)
(require 'nodejs-repl)

(provide 'lambda-js)

;;; lambda-js.el ends here
