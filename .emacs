
(set-keyboard-coding-system nil)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))


(package-initialize)

(defun require-package (package)
  (setq-default highlight-tabs t)
  "Install given PACKAGE."
  (unless (package-installed-p package)
    (unless (assoc package package-archive-contents)
      (package-refresh-contents))
    (package-install package)))

;; Theme stuff
(load-theme 'mustard t)

;; Mouse scrolling
(defun up-slightly () (interactive) (scroll-up 1))
(defun down-slightly () (interactive) (scroll-down 1))
(global-set-key (kbd "<mouse-4>") 'down-slightly)
(global-set-key (kbd "<mouse-5>") 'up-slightly)

(xterm-mouse-mode)

(ido-vertical-mode t)

;; 
(setq make-backup-files nil)


;; Highlight parentheses
(setq show-paren-delay 0)
(show-paren-mode 1)

;; Clojurescript figwheel REPL
(defun figwheel-repl ()
  (interactive)
  (run-clojure "lein figwheel"))

(add-hook 'clojure-mode-hook #'inf-clojure-minor-mode)


;; Evil-mode
(global-evil-leader-mode t)
(evil-leader/set-leader ",")

(require 'evil)
(evil-mode 1)


(evil-leader/set-key
  "e" 'find-file
  "x" 'smex
  "f" 'projectile-find-file
  "b" 'switch-to-buffer
  "k" 'kill-buffer)


;; Miscellaneous
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("405b0ac2ac4667c5dab77b36e3dd87a603ea4717914e30fcf334983f79cfd87e" default))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
