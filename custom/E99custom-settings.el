(setq js-indent-level 2)
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
