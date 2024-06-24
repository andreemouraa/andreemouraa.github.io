import java.util.ArrayList;
import java.util.List;

public class Escola {
    private List<Aluno> alunos;

    public Escola() {
        this.alunos = new ArrayList<>();
    }

    public void adicionarAluno(Aluno aluno) {
        alunos.add(aluno);
        System.out.println("Aluno adicionado com sucesso: " + aluno);
    }

    public void removerAluno(String matricula) {
        Aluno alunoParaRemover = null;
        for (Aluno aluno : alunos) {
            if (aluno.getMatricula().equals(matricula)) {
                alunoParaRemover = aluno;
                break;
            }
        }
        if (alunoParaRemover != null) {
            alunos.remove(alunoParaRemover);
            System.out.println("Aluno removido com sucesso: " + alunoParaRemover);
        } else {
            System.out.println("Aluno com matrícula " + matricula + " não encontrado.");
        }
    }

    public void listarAlunos() {
        if (alunos.isEmpty()) {
            System.out.println("Nenhum aluno na escola.");
        } else {
            System.out.println("Alunos na escola:");
            for (Aluno aluno : alunos) {
                System.out.println(aluno);
            }
        }
    }

    public void atualizarAluno(String matricula, String novoNome, int novaIdade) {
        for (Aluno aluno : alunos) {
            if (aluno.getMatricula().equals(matricula)) {
                aluno.setNome(novoNome);
                aluno.setIdade(novaIdade);
                System.out.println("Informações do aluno atualizadas com sucesso: " + aluno);
                return;
            }
        }
        System.out.println("Aluno com matrícula " + matricula + " não encontrado.");
    }
}
