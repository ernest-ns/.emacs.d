(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(setq package-archives                                      ;
      '(("gnu" . "https://elpa.gnu.org/packages/")          ; declare repositories
        ("marmalade" . "http://marmalade-repo.org/packages/")
        ("melpa" . "https://melpa.org/packages/")))         ;

(require 'package)                                          ; activate packages
(package-initialize)                                        ; initialize package facility

(setq my-packages
      '(ac-js2
        adaptive-wrap
        ag
        auto-complete
        calfw
        cask
        color-theme
        color-theme-sanityinc-tomorrow
        dash
        dash-at-point
        drag-stuff
        ecb
        enclose
        enh-ruby-mode
        feature-mode
        findr
        floobits
        flyspell-lazy
;        git-commit
;        git-rebase-mode
        grizzl
        hackernews
        haml-mode
        helm-projectile
        highlight
        highlight-indentation
        idle-highlight-mode
;       idle-highlight-mode
        ido-vertical-mode
        inf-ruby
        js2-mode
        magit
        maxframe
        mew
        move-text
        multi-term
        multiple-cursors
        noctilux-theme
;        pallet
        phi-search
        pkg-info
        popup
        project-explorer
        projectile
        projectile-rails
        quickrun
        rainbow-delimiters
        rainbow-mode
        recentf-ext
        rinari
        robe
        rubocop
        ruby-compilation
        ruby-tools
        s
        simple-httpd
        skewer-mode
        smartparens
        soft-morning-theme
        sr-speedbar
        ssh
        tabbar
        w3m
        web-mode
        web-mode
        wrap-region
        yaml-mode
        yasnippet
        zenburn-theme))

(unless package-archive-contents                            ; unless packages are not available locally, dont refresh package archives
  (package-refresh-contents))                               ; refreshing package contents is time-consuming and should be done on demand

(dolist (pkg my-packages)                                   ;
  (unless (package-installed-p pkg)                         ; iterate over packages and install missing ones
    (package-install pkg)))                                 ;

;; other config below


(add-to-list 'load-path "~/.emacs.d/custom")

(package-initialize)

(load "~/.emacs.d/custom/00common-setup.el")
(load "~/.emacs.d/custom/01ruby.el")
(load "~/.emacs.d/custom/02auto-complete.el")
(load "~/.emacs.d/custom/03spartparens.el")
(load "~/.emacs.d/custom/04projectile.el")
; (load "~/.emacs.d/custom/05highlight-indentation.el")
(load "~/.emacs.d/custom/06flyspell.el")
(load "~/.emacs.d/custom/07ido-vertical.el")
(load "~/.emacs.d/custom/08power-line.el")
(load "~/.emacs.d/custom/09smart-beginning-of-line.el")
; (load "~/.emacs.d/custom/10linum-relative.el")
; (load "~/.emacs.d/custom/11color-theme-railscasts.el")
(load "~/.emacs.d/custom/12yasnippet.el")
(load "~/.emacs.d/custom/13js2mode.el")
(load "~/.emacs.d/custom/14auto-indentation.el")
(load "~/.emacs.d/custom/15multiple-cursors.el")
(load "~/.emacs.d/custom/16projectile-rails.el")
(load "~/.emacs.d/custom/17move-text.el")
