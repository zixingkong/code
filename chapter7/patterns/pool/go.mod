module github.com/pool

go 1.20

replace github.com/pool => ./pool
//本章会介绍pool包 ①。这个包用于展示如何使用有缓冲的通道实现资源池，来管理可以在任意数量的goroutine之间共享及独立使用的资源。
//这种模式在需要共享一组静态资源的情况（如共享数据库连接或者内存缓冲区）下非 常 有用。如果goroutine需要从池里得到这些资源中的一个，它可以从池里申请，使用完后归还到资源池里。