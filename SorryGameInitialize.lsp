;;;; -*-  Mode: LISP; Syntax: Common-Lisp; Base: 10                          -*-
;;;; ---------------------------------------------------------------------------
;;;; File name: SorryGameInitialize.lsp
;;;;    System: EA
;;;;    Author: Chenghong Lin
;;;;   Created: March 1, 2020 18:09:13
;;;;   Purpose: 
;;;; ---------------------------------------------------------------------------
;;;;  $LastChangedDate: 2018-09-27 12:08:59 -0500 (Thu, 27 Sep 2018) $
;;;;  $LastChangedBy: usher $
;;;; ---------------------------------------------------------------------------

(in-package :ea)

(defvar *sorry-mts*
    '(cl-user::SorryGameOntologyMt cl-user::SorryFactsMt cl-user::SorryGameMt))

(defun nuke-sorry-gm-knowledge ()
  (dolist (mt *sorry-mts*)
    (cl-user::forget-mt mt)))

(defvar *sorry-gm-files*
    '("SorryGameFacts - Cathy"
      "SorryGameOntology"
      "SorryGamePlans - Cathy"))

(defun load-sorry-gm-knowledge ()
  (let ((folder-path "C:\\Users\\69006\\Desktop\\Sorry-Game\\"))
    (dolist (file-name *sorry-gm-files*)
      (fire::kr-file->kb (concatenate 'string 
                           folder-path file-name ".krf")))))

;;; for convenience - add my reload function
(defun cl-user::reload-sorry-gm-knowledge ()
  (nuke-sorry-gm-knowledge)
  (load-sorry-gm-knowledge))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; End of Code
