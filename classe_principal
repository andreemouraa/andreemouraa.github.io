import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Escola escola = new Escola();
        Scanner scanner = new Scanner(System.in);

        while (true) {
            System.out.println("\nSistema de Gerenciamento de Alunos");
            System.out.println("1. Adicionar Aluno");
            System.out.println("2. Remover Aluno");
            System.out.println("3. Listar Alunos");
            System.out.println("4. Atualizar Aluno");
            System.out.println("5. Sair");
            System.out.print("Escolha uma opção: ");
            int opcao = scanner.nextInt();
            scanner.nextLine();  // Consome a nova linha

            switch (opcao) {
                case 1:
                    System.out.print("Digite o nome do aluno: ");
                    String nome = scanner.nextLine();
                    System.out.print("Digite a idade do aluno: ");
                    int idade = scanner.nextInt();
                    scanner.nextLine();  // Consome a nova linha
                    System.out.print("Digite a matrícula do aluno: ");
                    String matricula = scanner.nextLine();
                    Aluno aluno = new Aluno(nome, idade, matricula);
                    escola.adicionarAluno(aluno);
                    break;
                case 2:
                    System.out.print("Digite a matrícula do aluno a ser removido: ");
                    String matriculaRemover = scanner.nextLine();
                    escola.removerAluno(matriculaRemover);
                    break;
                case 3:
                    escola.listarAlunos();
                    break;
                case 4:
                    System.out.print("Digite a matrícula do aluno a ser atualizado: ");
                    String matriculaAtualizar = scanner.nextLine();
                    System.out.print("Digite o novo nome do aluno: ");
                    String novoNome = scanner.nextLine();
                    System.out.print("Digite a nova idade do aluno: ");
                    int novaIdade = scanner.nextInt();
                    scanner.nextLine();  // Consome a nova linha
                    escola.atualizarAluno(matriculaAtualizar, novoNome, novaIdade);
                    break;
                case 5:
                    System.out.println("Saindo do sistema...");
                    scanner.close();
                    System.exit(0);
                    break;
                default:
                    System.out.println("Opção inválida. Tente novamente.");
            }
        }
    }
}
