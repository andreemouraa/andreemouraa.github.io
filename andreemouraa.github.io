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

// Classe Employee
class Employee {
    private String name;
    private double hourlyRate;
    private int hoursWorked;
   
    public Employee(String name, double hourlyRate, int hoursWorked) {
        this.name = name;
        this.hourlyRate = hourlyRate;
        this.hoursWorked = hoursWorked;
    }
   
    public double calculateSalary() {
        return hourlyRate * hoursWorked;
    }
}

// Subclasse Leader
class Leader extends Employee {
    public Leader(String name, double hourlyRate, int hoursWorked) {
        super(name, hourlyRate, hoursWorked);
    }
   
    @Override
    public double calculateSalary() {
        // Incrementa 2% ao salário base
        return super.calculateSalary() * 1.02;
    }
}

// Subclasse Manager
class Manager extends Employee {
    public Manager(String name, double hourlyRate, int hoursWorked) {
        super(name, hourlyRate, hoursWorked);
    }
   
    @Override
    public double calculateSalary() {
        // Incrementa 5% ao salário base
        return super.calculateSalary() * 1.05;
    }
}

// Classe Main
public class Main {
    public static void main(String[] args) {
        // Exemplo de uso
        Employee employee1 = new Employee("João", 20.0, 160);
        Leader leader1 = new Leader("Maria", 25.0, 160);
        Manager manager1 = new Manager("Carlos", 30.0, 160);
       
        System.out.println("Salário do funcionário João: R$" + employee1.calculateSalary());
        System.out.println("Salário da líder Maria: R$" + leader1.calculateSalary());
        System.out.println("Salário do gerente Carlos: R$" + manager1.calculateSalary());
    }
}

public class Main {
public static void main(String[] args)
{
Funcionario funcionarioComum = new
Funcionario("João", 10.0f, 160);
Lider lider = new
Lider ("Maria",
10.0f, 160);
Gerente gerente = new
Gerente( "Pedro", 10.0f, 160);
System.out.println("Salário do
funcionário comum:
1十
funcionarioComum.calcularSalario ());
System.out.println("Salário do
líder:
" + lider calcularSalario());
System.out.println("Salário do
gerente: " + gerente.calcularSalario());
Retangulo retanguloSimples = new
RetanguloSimples (5, 3);
System.out.println ("Retângulo
simples:");
retanguloSimples.desenhar ();
Retangulo retanguloBordaArredondada
= new RetanguloBordaArredondada (5, 3);
System.out.println("\nRetângulo com
borda arredondada:");
retanguloBordaArredondada.desenhar ();
   }
}
