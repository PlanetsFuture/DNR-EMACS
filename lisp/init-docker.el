;; init-docker.el --- Initialize docker configurations.	-*- lexical-binding: t -*-

;; Docker configurations.
;;

;;; Code:

(require 'init-const)

;; Docker
(use-package docker
  :defines docker-image-run-arguments
  :bind ("C-c D" . docker)
  :init (setq docker-image-run-arguments '("-i" "-t" "--rm")
              docker-container-shell-file-name "/bin/bash"))

;;`tramp-container' is builtin since 29
(unless emacs/>=29p
  (use-package docker-tramp))

(use-package dockerfile-mode)

(provide 'init-docker)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-docker.el ends here
