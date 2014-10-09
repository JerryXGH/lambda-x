;;; lambda-json.el --- JavaScript

;;; Commentary:

;;; Code:

(require 'lambda-core)

;; json-mode -------------------------------------------------------------------
(lambda-package-ensure-install 'json-reformat)
(lambda-package-ensure-install 'json-snatcher)
(lambda-package-ensure-install 'json-mode)

(provide 'lambda-json)

;;; lambda-json.el ends here