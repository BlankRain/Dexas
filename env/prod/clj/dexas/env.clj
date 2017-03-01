(ns dexas.env
  (:require [clojure.tools.logging :as log]))

(def defaults
  {:init
   (fn []
     (log/info "\n-=[dexas started successfully]=-"))
   :stop
   (fn []
     (log/info "\n-=[dexas has shut down successfully]=-"))
   :middleware identity})
