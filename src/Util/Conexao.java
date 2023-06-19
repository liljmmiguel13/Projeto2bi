package Util;
import java.sql.*;

public class Conexao {

  public static String status = "Não conectou...";

  private Connection connection;
  private Statement statement;

  public Conexao(String servidor, String database, String user, String password) throws SQLException {
      try {
          Class.forName("org.gjt.mm.mysql.Driver");
          connection = DriverManager.getConnection("jdbc:mysql://" + servidor + "/" + database, user, password);
      } catch (ClassNotFoundException ex) {
          System.out.println("Nao foi possıvel encontrar a classe do " + "Driver do MySQL");
      } catch (SQLException ex) {
          System.out.println("Nao foi possıvel conectar ao servidor");
          throw ex;
      }
      try {
          statement = connection.createStatement();
      } catch (SQLException ex) {
          System.out.println("Nao foi possível criar a statement");
          throw ex;
      }
  }

  public Conexao() {
      try {
          Class.forName("com.mysql.cj.jdbc.Driver");
          connection = DriverManager.getConnection("jdbc:mysql://localhost" + "/consulta?useTimezone=true&serverTimezone=UTC", "root", "ifpa");
          System.out.println("conectou!");
      } catch (ClassNotFoundException ex) {
          System.out.println("Nao foi possıvel encontrar a classe " + "do Driver do MySQL" + ex);
      } catch (SQLException ex) {
          System.out.println("Nao foi possível conectar ao servidor" + ex);
      }
      try {
          statement = connection.createStatement();
      } catch (SQLException ex) {
          System.out.println("Nao foi possıvel criar a statement" + ex);
      }
  }

  public synchronized void executeUpdate(String update) throws SQLException {
      try {
          statement.executeUpdate(update);
      } catch (SQLException ex) {
          System.out.println("Nao foi possıvel executar o update" + ex);
          throw ex;
      }
  }

  public synchronized ResultSet executeQuery(String query) throws SQLException {
      try {
          return statement.executeQuery(query);
      } catch (SQLException ex) {

          System.out.println("Nao foi possıvel executar a query" + ex);
          return null;

      }
  }

  public void fecharConexao() {
      try {
          statement.close();
      } catch (SQLException ex) {
          ex.printStackTrace();
      }
  }

  public int retornaIDMax(String paciente) {
      try {
          String sql = "SELECT max(ID) as contador FROM " + paciente;
          ResultSet rs = this.executeQuery(sql);
          rs.next();
          return rs.getInt("contador") + 1;
      } catch (SQLException e) {
          System.out.println("Erro na selecao do ID Maximo" + e);
          e.printStackTrace();

          return 0;
      }
  }
  
}
