(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

(unless (package-installed-p 'evil)
  (package-install 'evil))

(unless (package-installed-p 'ace-window)
  (package-install 'ace-window))

(unless (package-installed-p 'markdown-mode)
  (package-install 'markdown-mode))

(unless (package-installed-p 'dracula-theme)
  (package-install 'dracula-theme))

(unless (package-installed-p 'multi-vterm)
  (package-install 'multi-vterm))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)

(unless (package-installed-p 'fzf)
  (package-install 'fzf))

(unless (package-installed-p 'persp-mode)
  (package-install 'persp-mode))


(with-eval-after-load "persp-mode-autoloads"
    (setq wg-morph-on nil) ;; switch off animation
    (setq persp-autokill-buffer-on-remove 'kill-weak)
    (add-hook 'window-setup-hook #'(lambda () (persp-mode 1))))

(load-theme 'dracula t)

(global-set-key (kbd "M-o") 'ace-window)

(require 'evil)
(evil-mode 1)
(setq evil-default-state 'normal)
(global-display-line-numbers-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(markdown-mode ace-window evil))
 '(send-mail-function 'mailclient-send-it))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(use-package multi-vterm
	:config
	(evil-define-key 'insert vterm-mode-map (kbd "C-r")      #'vterm--self-insert))
