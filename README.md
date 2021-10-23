# zCore2HiFive
## Stage 1：前期调研

- 理解zCore核心代码的运行机制，完成相关环境的配置
- 阅读HiFive相关文档，对移植进行初步构思
- 查找与移植内核有关的资料，参考uCore等的移植经验

#### [HiFive硬件文档](https://sifive.cdn.prismic.io/sifive/de1491e5-077c-461d-9605-e8a0ce57337d_fu740-c000-manual-v1p3.pdf)

#### [HiFive软件文档](https://sifive.cdn.prismic.io/sifive/05d149d5-967c-4ce3-a7b9-292e747e6582_hifive-unmatched-sw-reference-manual-v1p0.pdf)

### 10.16~10.23

#### 1.[TOCK](https://github.com/tock/tock)

- 面向低功耗平台，利用Rust类型安全的特性，为微控制器提供多道程序设计环境

- 低功耗的设计目标舍弃了复杂的内存隔离和动态内存管理，提供更简单的环境

- 安全问题成为了很大的考验

- TOCK提供错误隔离和动态内存分配，在应用和应用，应用和内核间提供进程抽象

  ##### 相关特性：

- **Grants**：动态堆空间划分给不同进程，用于管理进程请求
- **Threat Model**：通过划分用户群体提供应对威胁的方法
- **Capsules**：内核的组成单元；内核共享一个内核栈；无法在运行时加载
- **Processes**：常规进程；不支持虚拟化、采用异步系统调用

#### 2.[Barrelfish](http://www.barrelfish.org/documentation.html)

- 一个实验操作系统，非常复杂，仅大致浏览，主要用来实践有关多内核的设计
- 内核(CPU Driver)调度进程(Dispatcher)运行，Dispatcher调度线程运行
- 内核提供基于权能(Capability)的系统调用
- 线程调度、内存管理、文件系统等按照微内核的设计思想在用户层实现

#### 3.zCore

- [zCore Tutorial](https://rcore-os.github.io/zCore-Tutorial/)
