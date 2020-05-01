package com.github.tornaia.panama.tutorial003;

import com.github.tornaia.panama.tutorial003.api.Point;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

/**
 * I know... just to compare the magnitudes.
 * <p>
 * Date: 01.05.2020
 * CPU: Intel Core i7-9750H CPU @ 2.60GHz
 * C: ~500k loops / sec
 * Java: ~300M loops / sec
 */
public class Tutorial003Test {

    @Test
    public void centerC() {
        Point center = Tutorial003.centerC(new Point(1D, 2D), new Point(3D, 4D));
        assertEquals(new Point(2D, 3D), center);
    }

    @Test
    public void centerJava() {
        Point center = Tutorial003.centerJava(new Point(1D, 2D), new Point(3D, 4D));
        assertEquals(new Point(2D, 3D), center);
    }

    @Test
    public void performanceCenterC() {
        long end = System.currentTimeMillis() + 1000L;

        long counter = 0L;
        while (System.currentTimeMillis() < end) {
            Tutorial003.centerC(new Point(counter + 1D, counter + 2D), new Point(counter + 3D, counter + 4D));
            counter++;
        }

        System.out.println(counter + " loops in 1 sec when logic implemented in C");
    }

    @Test
    public void performanceCenterJava() {
        long end = System.currentTimeMillis() + 1000L;

        long counter = 0L;
        while (System.currentTimeMillis() < end) {
            Tutorial003.centerJava(new Point(counter + 1D, counter + 2D), new Point(counter + 3D, counter + 4D));
            counter++;
        }

        System.out.println(counter + " loops in 1 sec when logic implemented in Java");
    }
}
