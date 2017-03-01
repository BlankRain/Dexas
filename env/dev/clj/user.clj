(ns user
  (:require [mount.core :as mount]
            dexas.core))

(defn start []
  (mount/start-without #'dexas.core/http-server
                       #'dexas.core/repl-server))

(defn stop []
  (mount/stop-except #'dexas.core/http-server
                     #'dexas.core/repl-server))

(defn restart []
  (stop)
  (start))


