((Highlight-Indentation-for-Emacs status "required" recipe nil)
 (cl-lib status "installed" recipe
		 (:name cl-lib :builtin "24.3" :type elpa :description "Properly prefixed CL functions and macros" :url "http://elpa.gnu.org/packages/cl-lib.html"))
 (el-get status "installed" recipe
		 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
				("el-get.*\\.el$" "methods/")
				:features el-get :post-init
				(when
					(memq 'el-get
						  (bound-and-true-p package-activated-list))
				  (message "Deleting melpa bootstrap el-get")
				  (unless package--initialized
					(package-initialize t))
				  (when
					  (package-installed-p 'el-get)
					(let
						((feats
						  (delete-dups
						   (el-get-package-features
							(el-get-elpa-package-directory 'el-get)))))
					  (el-get-elpa-delete-package 'el-get)
					  (dolist
						  (feat feats)
						(unload-feature feat t))))
				  (require 'el-get))))
 (emacs-color-theme-solarized status "installed" recipe
							  (:name emacs-color-theme-solarized :url "https://github.com/sellout/emacs-color-theme-solarized.git" :type git :after nil))
 (flymake status "installed" recipe
		  (:name flymake :after nil :description "Continuous syntax checking for Emacs." :type github :pkgname "illusori/emacs-flymake"))
 (flyspell status "installed" recipe
		   (:name flyspell :after nil :website "http://www-sop.inria.fr/members/Manuel.Serrano/flyspell/flyspell.html" :description "On-the-fly spell checker." :type http :url "http://www-sop.inria.fr/members/Manuel.Serrano/flyspell/flyspell-1.7q.el"))
 (multiple-cursors status "installed" recipe
				   (:name multiple-cursors :after nil :description "An experiment in adding multiple cursors to emacs" :type github :pkgname "magnars/multiple-cursors.el"))
 (neotree status "installed" recipe
		  (:name neotree :after nil :website "https://github.com/jaypei/emacs-neotree" :description "An Emacs tree plugin like NerdTree for Vim." :type github :branch "master" :pkgname "jaypei/emacs-neotree"))
 (org-mode status "required" recipe nil)
 (powerline status "installed" recipe
			(:name powerline :after nil :features
				   (powerline)
				   :website "https://github.com/milkypostman/powerline" :depends
				   (cl-lib)
				   :description "Powerline for Emacs" :type github :pkgname "milkypostman/powerline" :load-path "."))
 (slime status "required" recipe nil)
 (tabbar status "installed" recipe
		 (:name tabbar :description "Display a tab bar in the header line." :type github :pkgname "dholm/tabbar" :lazy t))
 (tabbar-ruler status "installed" recipe
			   (:name tabbar-ruler :after nil :website "https://github.com/mlf176f2/tabbar-ruler.el" :description "Tabbar ruler is an emacs package that allows both the tabbar and the ruler to be used together. In addition it allows auto-hiding of the menu-bar and tool-bar." :type github :depends tabbar :pkgname "mlf176f2/tabbar-ruler.el"))
 (undo-tree status "installed" recipe
			(:name undo-tree :after nil :description "Treat undo history as a tree" :website "http://www.dr-qubit.org/emacs.php" :type git :url "http://www.dr-qubit.org/git/undo-tree.git/"))
 (web-mode status "required" recipe nil))
