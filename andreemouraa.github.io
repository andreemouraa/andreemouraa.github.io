// Interface para os objetos de desenho
interface RectangleDrawer {
    void drawRectangle(int width, int height, String text);
}

// Classe base para objetos de desenho
abstract class BaseRectangleDrawer implements RectangleDrawer {
    protected void drawLine(String line) {
        System.out.println(line);
    }
}

// Implementação para desenhar um retângulo com bordas arredondadas
class RoundedRectangleDrawer extends BaseRectangleDrawer {
    @Override
    public void drawRectangle(int width, int height, String text) {
        drawLine("╭" + "─".repeat(width) + "╮");
        for (int i = 0; i < height; i++) {
            drawLine("|" + " ".repeat(width) + "|");
        }
        drawLine("╰" + "─".repeat(width) + "╯");
    }
}

// Implementação para desenhar um retângulo com bordas duplas
class DoubleBorderRectangleDrawer extends BaseRectangleDrawer {
    @Override
    public void drawRectangle(int width, int height, String text) {
        drawLine("╔" + "═".repeat(width) + "╗");
        for (int i = 0; i < height; i++) {
            drawLine("║" + " ".repeat(width) + "║");
        }
        drawLine("╚" + "═".repeat(width) + "╝");
    }
}

// Implementação para desenhar um retângulo colorido
class ColorfulRectangleDrawer extends BaseRectangleDrawer {
    @Override
    public void drawRectangle(int width, int height, String text) {
        drawLine("\u001B[44m" + " ".repeat(width));
        for (int i = 0; i < height; i++) {
            drawLine("\u001B[44m" + " ".repeat(width));
        }
        drawLine("\u001B[0m");
    }
}

// Factory Method para criar objetos de desenho de retângulos
class RectangleDrawerFactory {
    public static RectangleDrawer createRectangleDrawer(String type) {
        switch (type.toLowerCase()) {
            case "rounded":
                return new RoundedRectangleDrawer();
            case "double":
                return new DoubleBorderRectangleDrawer();
            case "colorful":
                return new ColorfulRectangleDrawer();
            default:
                throw new IllegalArgumentException("Tipo de retângulo não suportado: " + type);
        }
    }
}

// Teste do programa
public class Main {
    public static void main(String[] args) {
        RectangleDrawer roundedRectangleDrawer = RectangleDrawerFactory.createRectangleDrawer("rounded");
        System.out.println("Rounded Rectangle:");
        roundedRectangleDrawer.drawRectangle(10, 5, "Sample Text");

        RectangleDrawer doubleBorderRectangleDrawer = RectangleDrawerFactory.createRectangleDrawer("double");
        System.out.println("\nDouble Border Rectangle:");
        doubleBorderRectangleDrawer.drawRectangle(8, 3, "Another Text");

        RectangleDrawer colorfulRectangleDrawer = RectangleDrawerFactory.createRectangleDrawer("colorful");
        System.out.println("\nColorful Rectangle:");
        colorfulRectangleDrawer.drawRectangle(6, 4, "Hello");
    }
}
