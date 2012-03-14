
(defun color-theme-subtle-hacker-dark ()
  "This is a customized dark version of the emacs color theme subtle hacker (dependency!) 
  (originally written by Colin Walters (levanti@verbum.org)). 
   To use it install it like any other color theme."
  (interactive)
  (color-theme-subtle-hacker)
  (let ((color-theme-is-cumulative t))
  (color-theme-install
   '(color-theme-subtle-hacker-dark
     ((background-color . "#010101")
      (background-mode . dark)
      (border-color . 	 "black")
      (cursor-color . "#a7a7a7")
      (foreground-color . "#777777")
      (mouse-color . "sienna1"))
     (default ((t (nil))))))))
