package benchmark;

import org.junit.Assert;
import org.junit.Test;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import static benchmark.Counter.countDownLatch;

/**
 * Usage:  <br/>
 * Date: 2023/5/19 13:57 <br/>
 *
 * @author <a href="mailto:hanzhang2566@foxmail.com">hanzhang</a>
 */
public class CounterTest {
    @Test
    public void incrTest() throws InterruptedException {
        Counter counter = new Counter();
        ExecutorService service = Executors.newFixedThreadPool(100000);

        long start = System.currentTimeMillis();
        for (int i = 0; i < 100000; i++) {
            service.submit(counter::incr);
        }
        System.out.println("cost time: " + (System.currentTimeMillis() - start) / 1000 + "s");

        countDownLatch.await();
        Assert.assertEquals(100000, counter.getCount());
    }
}
