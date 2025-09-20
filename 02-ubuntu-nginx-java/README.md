在 ubuntu 的 docker 镜像基础上，制作 docker 单镜像。

由于涉及到多个进程，使用 [supervisor](https://github.com/Supervisor/supervisor) 进行管理

内含 
* 80: nginx进程
* 8081: java进程
* 8082: java进程