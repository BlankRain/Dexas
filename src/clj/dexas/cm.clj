;;;; Core Manager
(ns dexas.cm
    (:gen-class))

(deftype Customer)
;;;; 从参数生成客户对象
(defn request->Customer [req])
;;;; 注册客户信息
(defn registCustomer [customer])
;;;; 生成相关DockerFile
(defn buildCustomerDockerFile [customer])
;;;; 开辟资源,运行镜像
(defn rundockerForcustomer [customer  docker-file])

(def cli (k2nr.docker.core/make-client "127.0.0.1:4243"))
