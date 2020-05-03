package com.github.tornaia.panama.tutorial003;

import com.github.tornaia.panama.tutorial003.api.Point;
import com.github.tornaia.panama.tutorial003.c.center_h;
import com.github.tornaia.panama.tutorial003.c.center_h.CPoint;
import jdk.incubator.foreign.MemorySegment;

public class Tutorial003 {

    public static void main(String[] args) {
        System.out.println("Start");
        Point p0 = new Point(Double.parseDouble(args[0]), Double.parseDouble(args[1]));
        Point p1 = new Point(Double.parseDouble(args[2]), Double.parseDouble(args[3]));
        Point center = centerC(p0, p1);
        System.out.println(String.format("Center of %s and %s is %s", p0, p1, center));
        System.out.println("End");
    }

    public static Point centerC(Point p0, Point p1) {
        try (MemorySegment m0 = MemorySegment.allocateNative(CPoint.$LAYOUT());
             MemorySegment m1 = MemorySegment.allocateNative(CPoint.$LAYOUT())) {
            CPoint.x$VH().set(m0.baseAddress(), p0.getX());
            CPoint.y$VH().set(m0.baseAddress(), p0.getY());
            CPoint.x$VH().set(m1.baseAddress(), p1.getX());
            CPoint.y$VH().set(m1.baseAddress(), p1.getY());
            MemorySegment pc = (MemorySegment) center_h.center$MH().invokeExact(m0, m1);
            double cx = CPoint.x$get(pc.baseAddress());
            double cy = CPoint.y$get(pc.baseAddress());
            return new Point(cx, cy);
        } catch (Throwable t) {
            throw new IllegalStateException("Must not happen", t);
        }
    }

    public static Point centerJava(Point p0, Point p1) {
        return new Point((p0.getX() + p1.getX()) / 2D, (p0.getY() + p1.getY()) / 2D);
    }
}
