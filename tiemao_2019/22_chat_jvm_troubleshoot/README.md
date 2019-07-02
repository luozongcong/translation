一、准备chat分享主题（具体内容见下文准备内容）——1个周的准备时间
准备内容：
1. Chat 分享的主题 — JVM问题诊断入门
2. Chat 内容简介和大纲
   - 环境准备与配置
   
     版本兼容、环境变量、
   
   - JDK内置工具与使用
   
   - GC日志分析与解读
   
   - 内存dump与分析
   
   - 高级工具简介
3. 分享嘉宾个人简介
  参考美团案例：https://gitbook.cn/gitchat/activity/5b91078c41c7575ca0d6441a 
  二、准备正文——在主题发布后，2个周的准备时间
  三、线上微信群答疑——正文发布后，1个周的准备时间，在线答疑1个小时
4. 分享主题给我Word格式就好，正文需要给我Word文档和MD格式的文档以及图片包，其他没有了



主题 — JVM问题诊断入门

本次分享主要介绍JVM问题排查过程中可以使用的各种工具, 基于示例进行简单的讲解, 并简单引入一些相关的基础知识和调优建议。

内容涉及：

环境变量配置
常用性能指标
JVM基础知识
JVM启动参数
JDK自带工具使用
JDWP简介
JMX与相关工具
GC日志分析解读
内存DUMP和MAT分析工具简介
容器时代面临的挑战





更多高级工具简介







```
java -version
javac -version

-showversion
-XX+PrintCommandLineFlags

```







JPS

JSTAT

jstatd

visualgc

jstack

JVisualVM 

JMC

JMAP

JHat

BTrace

MAT

jdb

JINFO



JDWP



jconsole, jcmd, jshell



选项:





```
-Xmx4g
-Xms4g


```



```
-Dcom.sun.management.jmxremote 
-Dcom.sun.management.jmxremote.port=10990 
-Dcom.sun.management.jmxremote.ssl=false 
-Dcom.sun.management.jmxremote.authenticate=false 

```





## 随机数熵源(Entropy Source)

```
-Djava.security.egd=file:/dev/./urandom
```



<https://github.com/cncounter/translation/blob/master/tiemao_2017/07_FasterStartUp_Tomcat/07_FasterStartUp_Tomcat.md#%E9%9A%8F%E6%9C%BA%E6%95%B0%E7%86%B5%E6%BA%90entropy-source>





GC:



```

-verbosegc
-XX:+UseG1GC
-XX:MaxGCPauseMillis=200
-XX:+HeapDumpOnOutOfMemoryError
UseGClogFileRotation
NumberOfGCLogFiles
```







暂停时间超标, 释放的内存量持续减小。



付费工具: **JProfiler**, Plumbr,  Java Flight Recorder (JFR，市场),

Pinpoint, Datadog, Zabbix

gdb

HPROF





深入问题不讲

崩溃、死锁



- [the `JAVA_HOME` Environment Variable](https://docs.oracle.com/javase/8/docs/technotes/guides/troubleshoot/envvars001.html#CIHEEHEI)
- [The `JAVA_TOOL_OPTIONS` Environment Variable](https://docs.oracle.com/javase/8/docs/technotes/guides/troubleshoot/envvars002.html#CIHDGJHI)
- [The `java.security.debug` System Property](https://docs.oracle.com/javase/8/docs/technotes/guides/troubleshoot/envvars003.html#CIHDAFDD)



https://docs.oracle.com/javase/8/docs/technotes/guides/troubleshoot/clopts001.html



HotSpot VM Options: <https://www.oracle.com/technetwork/java/javase/tech/vmoptions-jsp-140102.html>

JMX 配置: <https://docs.oracle.com/javase/8/docs/technotes/guides/management/agent.html>

troubleshoot: <https://docs.oracle.com/javase/8/docs/technotes/guides/troubleshoot/toc.html>

GC Tuning Guide: <https://docs.oracle.com/javase/8/docs/technotes/guides/vm/gctuning/index.html>

Latency: <https://bravenewgeek.com/everything-you-know-about-latency-is-wrong/>

CAPACITY TUNING: <https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/performance_tuning_guide/s-memory-captun>

memory-leak: <https://www.programcreek.com/2013/10/the-introduction-of-memory-leak-what-why-and-how/>

MemoryUsage: <https://docs.oracle.com/javase/8/docs/api/java/lang/management/MemoryUsage.html>

JVMInternals : <http://blog.jamesdbloom.com/JVMInternals.html>
