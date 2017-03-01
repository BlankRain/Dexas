(ns dexas.env
  (:require [selmer.parser :as parser]
            [clojure.tools.logging :as log]
            [dexas.dev-middleware :refer [wrap-dev]]))

(def defaults
  {:init
   (fn []
     (parser/cache-off!)
     (log/info "\n-=[dexas started successfully using the development profile]=-"))
   :stop
   (fn []
     (log/info "\n-=[dexas has shut down successfully]=-"))
   :middleware wrap-dev})
