package com.github.tornaia.panama.tutorial003;

import com.github.tornaia.panama.tutorial003.api.Point;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class Tutorial003Test {

    @Test
    public void test() {
        Point center = Tutorial003.center(new Point(1D, 2D), new Point(3D, 4D));
        assertEquals(new Point(2D, 3D), center);
    }
}
