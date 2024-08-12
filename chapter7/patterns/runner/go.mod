module github.com/runner

go 1.20

replace github.com/runner => ./runner


//runner 包用于展示如何使用通道来监视程序的执行时间，如果程序运行时间太长，也可以用 runner 包来终止程序。当开发需要调度后台处理任务的程序的时候，
//这种模式会很有用。这个程序可能会作为 cron 作业执行，或者在基于定时任务的云环境（如 iron.io）里执行。