package com.github.tornaia.panama.tutorial002;

import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class Tutorial002Test {

    @Test
    public void test() {
        int result = Tutorial002.add(2, 3);
        assertEquals(5, result);
    }
}
