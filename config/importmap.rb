# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "admin-lte" # @3.2.0
pin "jquery" # @3.6.0
pin "bootstrap" # @4.6.2
pin "@popperjs/core", to: "@popperjs--core.js" # @2.11.6
pin "popper.js" # @1.16.1
pin "@fortawesome/fontawesome-free", to: "https://ga.jspm.io/npm:@fortawesome/fontawesome-free@6.1.2/js/all.js"
