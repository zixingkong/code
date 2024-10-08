module github.com/work

go 1.20

replace github.com/word => ./work
//work 包的目的是展示如何使用无缓冲的通道来创建一个 goroutine 池，这些 goroutine 执行并控制一组工作，让其并发执行。在这种情况下，
//使用无缓冲的通道要比随意指定一个缓冲区大小的有缓冲的通道好，因为这个情况下既不需要一个工作队列，也不需要一组 goroutine 配合执行。
//无缓冲的通道保证两个 goroutine 之间的数据交换。这种使用无缓冲的通道的方法允许使用者知道什么时候 goroutine 池正在执行工作，
//而且如果池里的所有 goroutine 都忙，无法接受新的工作的时候，也能及时通过通道来通知调用者。
//使用无缓冲的通道不会有工作在队列里丢失或者卡住，所有工作都会被处理。