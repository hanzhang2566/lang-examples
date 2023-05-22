package benchmark;

import lombok.Getter;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/**
 * Usage:  <br/>
 * Date: 2023/5/19 13:54 <br/>
 *
 * @author <a href="mailto:hanzhang2566@foxmail.com">hanzhang</a>
 */
public class Counter {
    public static Lock lock = new ReentrantLock();

    public static CountDownLatch countDownLatch = new CountDownLatch(100000);

    @Getter
    private int count = 0;

    public void incr() {
        lock.lock();
        count++;
        countDownLatch.countDown();
        lock.unlock();
    }

}
