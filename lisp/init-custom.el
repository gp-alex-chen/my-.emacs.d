
(defun split-window-left/right->up/down ()
  "把左右两屏调整为上下两屏.
       A
A|B => -
       B"
  (interactive)
  (let ((buf (current-buffer)))
    ;; 选中左侧 window
    (select-window (frame-first-window))
    ;; 删掉右侧 window
    (delete-other-windows)
    ;; 分屏、选中下边 window
    (select-window (split-window-below))
    ;; 切换至最近 buffer
    (switch-to-buffer (other-buffer))
    ;; 选中原来 buffer 所在的 window
    (select-window (get-buffer-window buf))))

(provide 'init-custom)
