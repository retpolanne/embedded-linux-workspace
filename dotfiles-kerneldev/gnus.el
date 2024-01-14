(setq user-mail-address "retpolanne@posteo.net"
      user-full-name "Anne Macedo")

(setq gnus-select-method
      '(nnimap "posteo"
	       (nnimap-address "posteo.de")
	       (nnimap-server-port "imaps")
	       (nnimap-stream ssl)))

(require 'smtpmail)

(setq send-mail-function 'smtpmail-send-it
      message-send-mail-function 'smtpmail-send-it
      smtpmail-smtp-server "posteo.de"
      smtpmail-smtp-service 587
      smtpmail-stream-type 'starttls
      smtpmail-debug-info t
      smtpmail-debug-verb t)
