 package Dao;

 import java.sql.ResultSet;

 import java.sql.SQLException;
import java.util.ArrayList;

import Model.Agendamento;
import Model.Paciente;
 import Util.Conexao;

 	public class PacienteDao {
 		
 		public boolean InserirPaciente(Paciente p) {
 			
 			Conexao conn = null;
 			
 			try {
 				
 				conn = new Conexao();
 				conn.executeUpdate("INSERT INTO paciente(email, senha, nome, sexo, dt_nascimento, nacionalidade, cidade, estado, telefone, nome_pai, nome_mae, telefone_emergencia, tipo_sangue) VALUES (" +
 						"'" + p.getEmail() + "',"  
 						+ "'" + p.getSenha() + "',"
 						+ "'"+ p.getNome() + "',"
 						+ "'" + p.getSexo() + "'," 
 						+ "'" + p.getDt_nascimento() + "',"
 						+ "'" + p.getNacionalidade() + "'," 
 						+ "'" + p.getCidade() + "',"
 						+ "'" + p.getEstado() + "'," 
 						+ "'" + p.getTelefone() + "',"
 						+ "'" + p.getNome_pai() + "',"  
 						+ "'" + p.getNome_mae() + "',"
 						+ "'"+ p.getTelefone_emergencia() + "',"
 						+ "'" + p.getTipo_sangue() + "');");
 					
 					conn.fecharConexao();
 				
 				return true;
 					
 			} catch(SQLException e) {
 				
 				return false;
 			}
 			
 		}
 		
 		public void DeletePaciente(String idpaciente) {
 			
 			Conexao conn = null;
 			
 			try {
 				
 				conn = new Conexao();
 				conn.executeUpdate("DELETE FROM paciente WHERE idpaciente = " + idpaciente + ";");
 				
 				conn.fecharConexao();
 				
 			} catch(SQLException e) {
 				
 				System.out.println("Falha ao deletar!");
 			}
 			
 		}
 		
 		public ResultSet ExcuteQuery(int idpaciente) {
 			
 			Conexao conn = null;
 			
 			try {
 				
 				conn = new Conexao();
 				ResultSet rs = conn.executeQuery("SELECT * FROM paciente WHERE idpaciente = " + idpaciente + ";");
 				
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
 						+ "'telefone' = " + p.getTelefone() + ","
 						+ "'nome_pai' = " + p.getNome_pai() + ","
 						+ "'nome_mae' = " + p.getNome_mae() + ","
 						+ "'telefone_emergencia' = " + p.getTelefone_emergencia() + ","
 						+ "'tipo_sangue' = " + p.getTipo_sangue() + "," + 
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
 				if(rs.next()) {
 					System.out.println("Login bem sucedido");
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
 						rs.getString("nome_pai"),
 						rs.getString("nome_mae"),
 						rs.getString("telefone_emergencia"),
 						rs.getString("tipo_sangue"));
 				} else {
 					return null;
 				}
 			}catch(SQLException e) {
 				System.out.println("Erro ao ler as informações na tabela!");
 				return null;
 			}
 		}
 		
 		public ArrayList<Paciente> getPacientes() {
			
 			Conexao conn = null;
 			
 			try {
 				
 				ArrayList<Paciente> pacientes = new ArrayList<Paciente>();
 				Paciente paciente =  null;
 				
 				
 				conn = new Conexao();
 				ResultSet rs = conn.executeQuery("SELECT * FROM paciente;");
 				
 				while(rs.next()) {
 					
 					paciente = new Paciente(
 							rs.getInt("idpaciente"),
 							rs.getString("email"),
 							rs.getString("senha"),
 							rs.getString("nome"),
 							rs.getString("sexo"),
 							rs.getString("dt_nascimento"),
 							rs.getString("nacionalidade"),
 							rs.getString("cidade"),
 							rs.getString("estado"),
 							rs.getString("telefone"),
 							rs.getString("nome_pai"),
 							rs.getString("nome_mae"),
 							rs.getString("telefone_emergencia"),
 							rs.getString("tipo_sangue")
 							);
 					
 					pacientes.add(paciente);
 							
 				}
 				
 				return pacientes;
 				
 			} catch(SQLException e) {
 				
 				System.out.print("erro ao pegar os pacientes");
 	            return new ArrayList<Paciente>();
 				
 			}
		
		}
 	
 	}
