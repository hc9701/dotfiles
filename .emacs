

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(setq Tex-auto-save t)
(setq Tex-parse-self t)
(setq-default Tex-master nil)

(setq Tex-output-view-style
      (quote (("^pdf$" "." "zathura &o %(outpage)"))))

(add-hook 'LaTex-mode-hook
	  (lambda()
	    (add-to-list 'Tex-command-list '("XeLaTex" "%`xelatex%(mode)'
					     %t" Tex-run-Tex nil t))
	    (setq Tex-command-default "XeLaTex")
	    ))

(add-hook 'LaTeX-mode-hook
	  (lambda ()
	    (setq TeX-auto-untabify t     ; remove all tabs before saving
		  TeX-engine 'xetex       ; use xelatex default
		  TeX-show-compilation t) ; display compilation windows
	    (TeX-global-PDF-mode t)       ; PDF mode enable, not plain
	    (setq TeX-save-query nil)
	    (imenu-add-menubar-index)
	    (define-key LaTeX-mode-map (kbd "TAB") 'TeX-complete-symbol)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-view-program-selection
   (quote
    (((output-dvi has-no-display-manager)
      "dvi2tty")
     ((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "Zathura")
     (output-html "xdg-open"))))
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   (quote
    ("c3c0a3702e1d6c0373a0f6a557788dfd49ec9e66e753fb24493579859c8e95ab" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;move backups to ~/.emacs_backups.d
(setq backup-directory-alist (quote (("."."~/.emacs_backups.d"))))

(menu-bar-mode 0)

;;
;; ace jump mode major function
;; 
(add-to-list 'load-path "/home/hc/.emacs.d/ace-jump-mode/")
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
;; you can select the key you prefer to
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode)



;; 
;; enable a more powerful jump back function from ace jump mode
;;
(autoload
  'ace-jump-mode-pop-mark
  "ace-jump-mode"
  "Ace jump back:-)"
  t)
(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode-pop-mark)

