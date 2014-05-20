(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)
(add-to-list 'load-path "~/.emacs.d/elisp")
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(smex 
		      clojure-mode
                      clojure-test-mode
                      nrepl
                      auto-complete
                      ac-nrepl)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; smex 
;;(require 'smex) 
;;(smex-initialize) 
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands) 

(require 'install)
(require 'powershell-mode)
(load "~/.emacs.d/user.el")
