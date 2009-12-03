;; This file is *NOT* part of GNU Emacs.

;;;  $Id: under.el,v 1.1.1.1 2002/07/01 17:04:37 benj Exp $

;; Copyright (C) 1998 by Benjamin Drieu
;; Author:	 Benjamin Drieu <bdrieu@april.org>
;; Maintainer:	 Benjamin Drieu <bdrieu@april.org>
;; Created:	 1998-08-28
;; Keywords: convenience

;; LCD Archive Entry:
;; under|Benjamin Drieu|bdrieu@april.org|
;; Underline portions of a buffer with "^"|
;; 1998|$Revision: 1.1.1.1 $|~/misc/under.el|

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 2, or (at
;; your option) any later version.

;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.


;;;  Add the following in your .emacs, and do a C-c C-u everywhere to
;;;  underline the region with "^"
;;;
;;;  (autoload 'underline-region "under" "Underline the region" t)
;;;  (global-set-key "\C-c\C-u" 'underline-region)

(defun underline-region ()
  "Underline the region"
  (interactive)  
  (setq position_un (point))
  (setq position_deux (mark))
  (beginning-of-line)
  (setq num-of-chars (- (min position_un position_deux) (point)))
  (end-of-line)
  (newline) 
  (insert-char (string-to-char " ") num-of-chars)
  (insert-char ?^ (abs (- position_deux position_un))))
