
依赖关系图

--> 表示依赖关系;

****************************************************************

１.生产环境时使用本方案,需要修改子模块api的swagger依赖直接改为service即可
api --> service --> dao --> bean --> common (备注:如果想要获取角色及权限只需在api模块添加拦截器处理角色和权限,要不就采用下面这个方案)
api --> auth --> service --> dao --> bean --> common

２.开发环境调试时本方案
api --> swagger --> service --> dao --> bean --> common (备注:如果想要获取角色及权限只需在api模块添加拦截器处理角色和权限,要不就采用下面这个方案)
api --> swagger --> auth --> service --> dao --> bean --> common

３.负载均衡|集群环境
web --> auth --> service --> dao --> bean --> common

４.单机部署
frontend --> web --> auth --> service --> dao --> bean --> common

注意 application.properties 的文件读取,是以最终打包的模块的文件为主,否则是获取不到数据的问题：

比如本项目就只有把配置文件放在api、web、frontend模块里的值才能获取到,否则会报错获取不到值

注意service层的方法上是否有final关键字,否则也会这个报错,或提示系统出现错误(其实是空指针)

使用token时，注意返回和请求做统一处理,请注意看如图token_example_使用token时，所需要修改的文件.png，即可