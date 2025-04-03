;;; .dir-locals.el --- Directory Local Variables for Project -*- lexical-binding: t; -*-

;;; Commentary:
;; This file sets directory-specific variables for Emacs.
;; It applies settings based on the project structure.

;;; Code:

((nil . ((indent-tabs-mode . nil)  ;; Use spaces instead of tabs
         (fill-column . 100)))      ;; Set max line width

 (ruby-mode . ((ruby-indent-level . 2)     ;; Set Ruby indentation
               (ruby-use-smie . t)))       ;; Enable structured editing

 (rust-mode . ((rust-format-on-save . t)   ;; Auto-format Rust on save
               (cargo-process--enable-rust-backtrace . t))) ;; Enable Rust backtrace for debugging

 (emacs-lisp-mode . ((mode . flycheck))))  ;; Enable Flycheck in Emacs Lisp files

;;; .dir-locals.el ends here
