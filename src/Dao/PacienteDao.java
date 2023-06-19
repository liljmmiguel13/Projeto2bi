package Dao;

 import java.sql.ResultSet;
 import java.sql.SQLException;
 import Model.Paciente;
 import Util.Conexao;

 	public class PacienteDao {
 		
 		public boolean InserirPaciente(Paciente p) {
 			
 			Conexao conn = null;
 			
 			try {
 				
 				conn = new Conexao();
 				conn.executeUpdate("INSERT INTO paciente(email, senha, nome, sexo, dt_nascimento, nacionalidade, cidade, estado, telefone) VALUES (" +
 						"'" + p.getEmail() + "',"  
 						+ "'" + p.getSenha() + "',"
 						+ "'"+ p.getNome() + "',"
 						+ "'" + p.getSexo() + "'," 
 						+ "'" + p.getDt_nascimento() + "',"
 						+ "'" + p.getNacionalidade() + "'," 
 						+ "'" + p.getCidade() + "',"
 						+ "'" + p.getEstado() + "'," 
 						+ "'" + p.getTelefone() + "');");
 					
 					conn.fecharConexao();
 				
 				return true;
 					
 			} catch(SQLException e) {
 				
 				return false;
 			}
 			
 		}
 		
 		public void DeletePaciente(Paciente p) {
 			
 			Conexao conn = null;
 			
 			try {
 				
 				conn = new Conexao();
 				conn.executeUpdate("DELETE FROM paciente WHERE idpaciente = " + p.getIdpaciente() + ";");
 				
 				conn.fecharConexao();
 				
 			} catch(SQLException e) {
 				
 				System.out.println("Falha ao deletar!");
 			}
 			
 		}
 		
 		public ResultSet ExcuteQuery(Paciente p) {
 			
 			Conexao conn = null;
 			
 			try {
 				
 				conn = new Conexao();
 				ResultSet rs = conn.executeQuery("SELECT * FROM paciente(email, senha, nome, sexo, dt_nascimento, nacionalidade, cidade, estado, telefone) WHERE idpaciente = " + p.getIdpaciente() + ";");
 				
 				conn.fecharConexao();
 				
 				return rs;
 				
 			} catch(SQLException e) {
 				
 				return null;
 			}
 			
 		}
 		
 		public boolean UpdatePaciente(Paciente p) {
 			
 			Conexao conn = null;
 			
 			try {
 				
 				conn = new Conexao();
 				conn.executeUpdate("UPDATE paciente SET"
 						+ "'nome' = " + p.getNome() + ","
 						+ "'email' = " + p.getEmail() + ","
 			 			+ "'senha' = " + p.getSenha() + ","
 						+ "'sexo' = " + p.getSexo() + ","
 						+ "'dt_nascimento' = " + p.getDt_nascimento() + ","
 						+ "'nacionalidade' = " + p.getNacionalidade() + ","
 						+ "'cidade' = " + p.getCidade() + ","
 						+ "'estado' = " + p.getEstado() + ","
 						+ "'telefone' = " + p.getTelefone() + 
       "WHERE idpaciente = " + p.getIdpaciente() + ";");
 						
 				conn.fecharConexao();
 				
 				return true;
 				
 			} catch(SQLException e) {
 				
 				return false;
 			}
 			
 		}
 		
 		public Paciente FazerLogin(String email, String senha) {
 			
 			Conexao conn = null;
 			
 			try {
 				conn = new Conexao();
 				ResultSet rs = conn.executeQuery("SELECT * FROM paciente WHERE email =\'" + email + "\' AND senha =\'" + senha + "\';");
 				System.out.println("Login bem sucedido");
 				if(rs.next()) {
 					System.out.println("entrou");
 					return new Paciente(
 						rs.getInt("idpaciente"),
 						rs.getString("nome"),
 						rs.getString("email"),
 						rs.getString("senha"),
 						rs.getString("sexo"),
 						rs.getString("dt_nascimento"),
 						rs.getString("nacionalidade"),
 						rs.getString("cidade"),
 						rs.getString("estado"),
 						rs.getString("telefone"),
 						rs.getInt("codigo_info")
 					);
 				}else {
 					return null;
 				}
 			}catch(SQLException e) {
 				System.out.println("Erro ao ler as informações na tabela!");
 				return null;
 			}
 		}
 		
 	}