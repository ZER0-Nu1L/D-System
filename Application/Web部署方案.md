## [使用 python -m SimpleHTTPServer 快速搭建http服务](https://www.cnblogs.com/lmg-jie/p/9564608.html)

1. `xterm 10.0.0.1` （中心服务器）后，`cd` 到对应场景的 Web 前端文件夹下（含 `index.hmtl`的那一级）
1. 执行 `python3 -m http.server 8000 &` ，使得 10.0.0.1 后台执行 http 服务，可以访问：http://10.0.0.1:8000

3. `nohup python -m http.server 8000 &` 关闭服务。