(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(show-paren-mode t)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 ;;设置用户名和邮件地址
(setq user-full-name    "杨圣亮")
(setq user-mail-address "fedkey@sina.com")
(setq user-blog "yangshengliang.com")

;;常见操作-快速操作emacs
;;一：buffer操作
;; c-x c-b   			显示所有buffer名字
;; c-x k    	       	关闭当前buffer
;; c-x b     			buffer切换
;; c-x c-s   			保存当前buffer
;; c-x s     			保存所有buffer
;; M-x rename-buffer   	重命名buffer
;; C-x C-q				切换buffer的read-only和read-write状态；
;; C-x 22				即split-window-vertically命令，水平切分窗口
;; C-x 3				垂直切分窗口
;; C-x 4 b(f)			在另一个窗口选择另一个buffer（查找另一个文件）
;; C-M-v				滚动另一个window（C-v是滚动当前window）
;; C-x o				此处 o 表示other（其它），移动光标到另一个window
;; C-x 0				删除当前所在的window
;; C-x 1				删除当前所在window之外的所有window；
;; C-x 5 2				新建一个frame；  


;;二、快捷键
;; <Tab>        c-q <Tab>
;; 保存文件		c-x c-s
;; 新建文件		c-x c-f
;; 打开文件		同新建文件

;; 插件管理器: el-get 安装
;(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
;(unless (require 'el-get nil 'noerror)
;  (with-current-buffer
;      (url-retrieve-synchronously
;       "https://github.com/dimitri/el-get/blob/master/el-get-install.el")
;    (goto-char (point-max))
;    (eval-print-last-sexp)))
;(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
;
;;------------------------------------添加alpa包源----------------------
;;添加包源
;; --------------------------------------------------------------------
;; emacs package manager
;; Emacs is not a package manager, and here we load its package manager!
;; 设置包管理源
;; --------------------------------------------------------------------
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/")
t)
(add-to-list 'package-archives
             '("popkit" . "http://elpa.popkit.org/packages/"))
(package-initialize)

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))
; ;;-----------------------------------------------结束---------------------------------
;(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
;(unless (require 'el-get nil t)
;  (url-retrieve
;   "https://github.com/dimitri/el-get/raw/master/el-get-install.el"
;   (lambda (s)
;     (end-of-buffer)
;     (eval-print-last-sexp))))
; 
;;使用el-get自动安装插件
;; 使用插件名安装
;;;(el-get-bundle yasnippet)
;;;(el-get-bundle color-moccur)

;; 用插件地址安装
;;;(el-get-bundle yaicomplete
;;  :url "https://github.com/tarao/elisp.git"
;;  :features yaicomplete)



;; ===============公共配置===========================
;; 界面设置

(set-foreground-color "grey")
(set-background-color "black")
(set-cursor-color "gold1")
(set-mouse-color "gold1")
(tool-bar-mode nil) ;;不显示工具栏

;; 一打开就起用 text 模式。
(setq default-major-mode 'text-mode)

;;不显示GNU emacs启动界面
(setq inhibit-startup-message t)
;;启用buffer
;(switch-to-buffer buffer-file-name)
;(delete-other-windows)
;; 显示上次关闭的buffer
(desktop-save-mode)
(load "desktop") 
(desktop-load-default) 
(desktop-read)


;; 尽快显示按键序列
(setq echo-keystrokes 0.1)

;; 以 y/n代表 yes/no
(fset 'yes-or-no-p 'y-or-n-p) 

;; 支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t) 

;; 在标题栏提示你目前在什么位置
(setq frame-title-format "fedkey") 

;; 显示行号
(global-linum-mode t)

;;光标显示为一竖线  
(setq-default cursor-type 'bar)  

;; 语法高亮
(global-font-lock-mode t)

;;可以显示图片  
(auto-image-file-mode t) 

;; 显示列号
(setq column-number-mode t)
(setq line-number-mode t)

;; 设置默认tab宽度为4
(setq default-tab-width 4)


;;默认链接网络浏览器打开  
(setq browse-url-generic-program (executable-find "firefox")  
     browse-url-browser-function 'browse-url-generic)  

;; 默认显示 79列就换行
(setq default-fill-column 79) 

;; 回车缩进
(global-set-key "\C-m" 'newline-and-indent)
(global-set-key (kbd "C-<return>") 'newline)

;; 显示时间，格式如下
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

(transient-mark-mode t) 

;;不产生备份文件
(setq make-backup-files nil)
;; 当浏览 man page 时，直接跳转到 man buffer
(setq Man-notify-method 'pushy)

;; 自动的在文件末增加一新行
(setq require-final-newline t)

;; 实现全屏效果，快捷键为f11
(global-set-key [f11] 'my-fullscreen)
(defun my-fullscreen ()
(interactive)
(x-send-client-message
nil 0 nil "_NET_WM_STATE" 32
'(2 "_NET_WM_STATE_FULLSCREEN" 0))
)
;; 最大化
(defun my-maximized ()
(interactive)
(x-send-client-message
nil 0 nil "_NET_WM_STATE" 32
'(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
(x-send-client-message
nil 0 nil "_NET_WM_STATE" 32
'(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
)
;; 启动emacs时窗口最大化
(my-maximized)

;; 启动窗口大小
(setq default-frame-alist
'((height . 35) (width . 125) (menu-bar-lines . 20) (tool-bar-lines . 1)))

;; 保存你上次光标所在的位置
(require 'saveplace)
(setq-default save-place t)

;;把 C-x C-b 那个普通的 buffer menu 换成非常方便的 ibuffer
(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; 方便的切换buffer
(require 'ido)
(ido-mode t)

;; 设置默认主题 solarized
;;https://github.com/sellout/emacs-color-theme-solarized
;(el-get-bundle emacs-color-theme-solarized
  ;             :url "https://github.com/sellout/emacs-color-theme-solarized.git"
 ;              )
(add-to-list 'custom-theme-load-path "~/.emacs.d/el-get/emacs-color-theme-solarized")
(load-theme 'solarized t)
(set-frame-parameter nil 'background-mode 'light) ;;选择solarized dark
(enable-theme 'solarized)

;; ================通用IDE===========================================
;;tabbar 多标签窗口 el-get 安装
;(el-get-bundle tabbar)
(add-to-list 'load-path "~/.emacs.d/el-get/tabbar")  
(require 'tabbar)  
(tabbar-mode 1)  
 (global-set-key [(meta j)] 'tabbar-backward)
(global-set-key [(meta k)] 'tabbar-forward)

;(el-get-bundle tabbar-ruler)
(add-to-list 'load-path "~/.emacs.d/el-get/tabbar-ruler")  
(require 'tabbar-ruler)

;;目录树 neotree
;(el-get-bundle neotree)
(add-to-list 'load-path "~/.emacs.d/el-get/neotree")  
(require 'neotree)
(global-set-key [f8] 'neotree-toggle) ;;按f8打开
;;撤销树
;(el-get-bundle undo-tree)
(add-to-list 'load-path "~/.emacs.d/el-get/undo-tree")  
(require 'undo-tree)

;;实时语法检查
;(el-get-bundle flymake)
(add-to-list 'load-path "~/.emacs.d/el-get/flymake")  
(require 'flymake)

;;;拼写检查
;(el-get-bundle flyspell)
(add-to-list 'load-path "~/.emacs.d/el-get/flyspell")  
(require 'flyspell)
;;;笔记,待办事项-任务管理器
;lgit clone git://orgmode.org/org-mode.git
;;http://www.fuzihao.org/blog/2015/02/19/org-mode%E6%95%99%E7%A8%8B/  org-mode教程
;;;(el-get-bundle org-mode)
;;(require 'org-mode)
;;(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))  ;自动换行
;;教程
;;新建文件
;;打开Emacs
;; 输入 C-x C-f ～/test/test.org
;;注意文件后缀名为org，该命令新建了一个名为test.org的文件。
;;org-mode用* 标识章节，一个* 代表一级标题，两个* 代表两级标题，以此类推。类似wiki语法
;;
;;    S+Tab 展开、折叠所有章节
;;    Tab 对光标所在章节进行展开、折叠
;;    M+left/right 升级/降级标题

;; 多光标编辑
;; https://github.com/magnars/multiple-cursors.el
;(el-get-bundle multiple-cursors)
(add-to-list 'load-path "~/.emacs.d/el-get/multiple-cursors")  
(require 'multiple-cursors)

;;状态栏美化
;(el-get-bundle powerline)
(add-to-list 'load-path "~/.emacs.d/el-get/powerline")  
(require 'powerline)
(powerline-default-theme)
(powerline-raw mode-line-mule-info nil 'l)

;; emacs listp开发工具
;;(el-get-bundle  slime)
;(require slime)

;; 所见即所得的文本模式的表格编辑器
;;
;; ---------------------web-IDE-------------------------------------
;; web-mode
;(el-get-bundle web-mode)
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(setq web-mode-enable-current-element-highlight t)
;; emmet
;(el-get-bundle emmet-mode
;	 :url "https://github.com/smihica/emmet-mode"
;	  )
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)
;;开启模式  M-x emmet-mode.

;; ac-html 提供自动补全html的能力
;(el-get-bundle ac-html)
(require 'ac-html)

; js2-mode js开发必备
;(el-get-bundle js2-mode)
(require 'js2-mode)

;; === python IDE ===
;; jedi补全python;(el-get安装)
;(el-get-bundle jedi)
	(require 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
(require 'company-jedi)

;; - pyton-mode
;; 需要安装python bzr包
;; sudo apt-get install bzr
;(el-get-bundle bzr:python-mode
 ;  :url "https://gitlab.com/python-mode-devs/python-mode.git")
	(require 'python-mode)
		(setq auto-mode-alist
		(cons '("//.py$" . python-mode) auto-mode-alist))
			(setq interpreter-mode-alist
 			(cons '("python" . python-mode)
 				interpreter-mode-alist))
(autoload 'python-mode "python-mode" "Python editing mode." t)

;; python django
;(el-get-bundle django-mode)
(require 'django-mode)

;; YASnippet代码块;(el-get安装)
;(el-get-bundle yasnippet)
(add-to-list 'load-path
              "~/.emacs.d/el-get/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)
(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)

;; - pytest
;(el-get-bundle pytest)
(require 'pytest)
(add-hook 'python-mode-hook
          (lambda ()
            (local-set-key "\C-ca" 'pytest-all)
            (local-set-key "\C-cm" 'pytest-module)
            (local-set-key "\C-c." 'pytest-one)
            (local-set-key "\C-cd" 'pytest-directory)
            (local-set-key "\C-cpa" 'pytest-pdb-all)
            (local-set-key "\C-cpm" 'pytest-pdb-module)
            (local-set-key "\C-cp." 'pytest-pdb-one)))


;; =======补全
;;https://github.com/auto-complete/auto-complete
;;auto-complete
;(el-get-bundle auto-complete)
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(setq-default ac-sources '(ac-source-words-in-same-mode-buffers))
(add-hook 'emacs-lisp-mode-hook (lambda () (add-to-list 'ac-sources 'ac-source-symbols)))
(add-hook 'auto-complete-mode-hook (lambda () (add-to-list 'ac-sources 'ac-source-filename)))
(set-face-background 'ac-candidate-face "lightgray")
(set-face-underline 'ac-candidate-face "darkgray")
(set-face-background 'ac-selection-face "steelblue") ;;; 设置比上面截图中更好看的背景颜色
(define-key ac-completing-map "\M-n" 'ac-next)  ;;; 列表中通过按M-n来向下移动
(define-key ac-completing-map "\M-p" 'ac-previous)
(setq ac-auto-start 2)
(setq ac-dwim t)
(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
