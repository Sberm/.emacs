;; sberf quick access
(defun sberf()
  (interactive)
  (find-file "/plinkx:root@sberm.cn:~/hw/sberf/"))

;; insert text
(defun code-header()
  (interactive)
  (insert 
       "/*-*- tab-width:8;coding:utf-8                                              -*-│\n"
       "│vi: set net ft=c ts=2 sts=2 sw=2 fenc=utf-8                                :vi│\n"      
       "╞══════════════════════════════════════════════════════════════════════════════╡\n"
       "│ Copyright 2023 Howard Chu                                                    │\n"
       "│                                                                              │\n"
       "│ Permission to use, copy, modify, and/or distribute this software for         │\n"
       "│ any purpose with or without fee is hereby granted, provided that the         │\n"
       "│ above copyright notice and this permission notice appear in all copies.      │\n"
       "│                                                                              │\n"
       "│ THE SOFTWARE IS PROVIDED \"AS IS\" AND THE AUTHOR DISCLAIMS ALL                │\n"
       "│ WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED                │\n"
       "│ WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE             │\n"
       "│ AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL         │\n"
       "│ DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR        │\n"
       "│ PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER               │\n"
       "│ TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR             │\n"
       "│ PERFORMANCE OF THIS SOFTWARE.                                                │\n"
       "╚─────────────────────────────────────────────────────────────────────────────*/\n"))


;; header
(auto-insert-mode) ;; on
;; (electric-indent-mode 0) ;; disable auto indentation

(eval-after-load 'autoinsert
  '(define-auto-insert '("\\.\\(cc\\|cxx\\|cpp\\|c\\)\\'" . "C skeleton")
     '("place holder"
       "/*-*- tab-width:8;coding:utf-8                                              -*-│\n"
       "│vi: set net ft=c ts=2 sts=2 sw=2 fenc=utf-8                                :vi│\n"       
       "╞══════════════════════════════════════════════════════════════════════════════╡\n"
       "│ Copyright 2023 Howard Chu                                                    │\n"
       "│                                                                              │\n"
       "│ Permission to use, copy, modify, and/or distribute this software for         │\n"
       "│ any purpose with or without fee is hereby granted, provided that the         │\n"
       "│ above copyright notice and this permission notice appear in all copies.      │\n"
       "│                                                                              │\n"
       "│ THE SOFTWARE IS PROVIDED \"AS IS\" AND THE AUTHOR DISCLAIMS ALL                │\n"
       "│ WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED                │\n"
       "│ WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE             │\n"
       "│ AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL         │\n"
       "│ DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR        │\n"
       "│ PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER               │\n"
       "│ TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR             │\n"
       "│ PERFORMANCE OF THIS SOFTWARE.                                                │\n"
       "╚─────────────────────────────────────────────────────────────────────────────*/\n")))


;; toggle word wrap
;; (global-set-key (kbd "C-w") 'toggle-truncate-lines)

;; multi-cursor
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; line num
(global-display-line-numbers-mode)

;; lucius theme
(load-theme 'lucius t)

;; start coding style

;; smart tab
;; (setq-default indent-tabs-mode nil)
;; (add-hook 'c-mode-common-hook
;;           (lambda () (setq indent-tabs-mode t)))

(setq-default c-default-style "linux")
(setq-default c-basic-offset 8
                  tab-width 8
                  indent-tabs-mode t)
;; number of tab(\t) inserted each time tab key is pressed = (c-basic-offset / tab-width)

;; end coding style

;; grep default command
(setq grep-command
      "grep -nH -r ./ -e \"\"")

;; undo文件位置
(setq undo-tree-history-directory-alist '(("." . "~/.emacs.d/undo")))

;; 字体
;; (set-face-attribute 'default nil :font (font-spec :family "汉仪中圆 简" :size 13))

;; fonts
;; (add-to-list 'default-frame-alist
;;              '(font . "汉仪中圆 简-13"))

(set-face-attribute 'default nil :weight 'bold :height 150)

;; doujin
(defun doujin()
  (interactive)
  (find-file "C:/Users/Sberm/Downloads/java material/2/doujin"))

;; react正常缩进
(setq web-mode-content-types-alist
  '(("jsx" . "\\.js[x]?\\'")))

;; 解决.emacs文件中文乱码问题:
;; 为彻底解决问题，最好把当前文件转换为“UTF-8”编码的文件。
;; 操作：“C-x <RET> f utf-8-dos”，“C-x C-s”

;; 关闭tramp的Projectile模式
(setq projectile-mode-line "Projectile")

;; 新建文件为utf-8编码(方便服务器写文档)
(set-locale-environment "en_US.UTF-8")

;; 窗口操作
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)

;; 总是horizontal split
(setq split-width-threshold 1)

;; (latex-preview-pane-enable)
;; latex用
(defun pdf-preview()
  (interactive)
  (latex-preview-pane-mode))

(defun pdf-fit()
  (interactive)
  (doc-view-fit-width-to-window))

;; windows的daily文件夹
(defun daily()
  (interactive)
  (find-file "C:/Users/Sberm/Downloads/daily"))

;; emacs初始窗口大小
;; (add-to-list 'default-frame-alist '(height . 35))
;; (add-to-list 'default-frame-alist '(width . 42))

;; 在另一个窗口打开dired(不知道要不要保留)
(defun open-dired-other-window()
  (interactive)
  (dired-other-window "./"))
(global-set-key (kbd "C-x d") 'open-dired-other-window)

;; 
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; 
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; 无闪烁光标?
(blink-cursor-mode 0)

;; backup文件位置
(setq backup-directory-alist `(("." . "~/.saves")))

;; (global-font-lock-mode 0)

;; (add-to-list 'default-frame-alist
;;              '(font . "Monaco-20:bold"))



;; 服务器用
(defun sberm-server()
  (interactive)
  (find-file "/plinkx:root@sberm.cn:/root"))

(defun docs()
  (interactive)
  (find-file "/plinkx:root@sberm.cn:/root/hw/blog-hw/docs/md"))

;; undo tree
(global-undo-tree-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(multiple-cursors org-preview-html latex-preview-pane auctex expand-region undo-tree)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

