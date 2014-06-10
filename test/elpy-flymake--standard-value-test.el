(ert-deftest elpy-flymake--standard-value-should-get-standard-value ()
  (elpy-testcase ()
    (require 'python)
    (if (version< emacs-version "24.3")
        (should (equal (elpy-flymake--standard-value 'python-check-command)
                       "pychecker --stdlib"))
      (should (equal (elpy-flymake--standard-value 'python-check-command)
                     "pyflakes")))))