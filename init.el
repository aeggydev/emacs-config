(when (< emacs-major-version 27)
  (load-file (concat user-emacs-directory "early-init.el")))

(defvar my-tangle-source (expand-file-name "tangle.el" user-emacs-directory))
(defvar my-emacs-config-org (expand-file-name "main-config.org" user-emacs-directory))
(defvar my-emacs-config-el (expand-file-name "var/config.el" user-emacs-directory))
(when (file-newer-than-file-p my-emacs-config-org my-emacs-config-el)
  (load-file my-tangle-source)
  (my-tangle-config-org my-emacs-config-org my-emacs-config-el))
(load-file my-emacs-config-el)
