class Printer
{
    public <T> void printArray(T[] a) {
        for (T elem : a) {
            System.out.println(elem);
        }
    }
}

