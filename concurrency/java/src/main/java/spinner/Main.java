package spinner;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * Usage:  <br/>
 * Date: 2023/5/19 1:02 <br/>
 *
 * @author <a href="mailto:hanzhang2566@foxmail.com">hanzhang</a>
 */
public class Main {
    public static void main(String[] args) {
        // Executors CF str p
        ExecutorService service = Executors.newSingleThreadExecutor();

        service.submit(() -> {
            while (true) {
                for (char c : "-\\|/".toCharArray()) {
                    System.out.printf("\r%c", c);
                    try {
                        Thread.sleep(1000);
                    } catch (InterruptedException e) {
                        throw new RuntimeException(e);
                    }
                }
            }
        });
        System.out.println();
        System.out.println(fib(45) == 1134903170);

    }

    private static int fib(int x) {
        if (x < 2) {
            return x;
        }

        return fib(x - 1) + fib(x - 2);
    }
}
