package Dao;

	import java.sql.ResultSet;
	import java.util.ArrayList;
	import java.sql.SQLException;
	import Model.Agendamento;
	import Util.Conexao;

	public class AgendamentoDao {
	
		public boolean InserirAgendamento(Agendamento a) {
			
			Conexao conn = null;
			
			try {
				
				conn = new Conexao();
				conn.executeUpdate("INSERT INTO agendamento(data, localMorada, clinica, medico, tipo_atendimento, idpaciente) VALUES (" +
						"'" + a.getData() + "',"  
						+ "'" + a.getLocalMorada() + "',"
						+ "'"+ a.getClinica() + "',"
						+ "'" + a.getMedico() + "'," 
						+ "'" + a.getTipo_atendimento() + "'," 
						+ "'" + a.getIdpaciente() + "');");
					
					conn.fecharConexao();
				
				return true;
					
			} catch(SQLException e) {
				
				return false;
			}
			
		}
	
		public void DeleteAgendamento(String idagendamento) {
			
			Conexao conn = null;
			
			try {
				
				conn = new Conexao();
				conn.executeUpdate("DELETE FROM agendamento WHERE idagendamento = " + idagendamento + ";");
				
				conn.fecharConexao();
				
			} catch(SQLException e) {
				
				System.out.println("Falha ao deletar!");
			}
			
		}
		
		public Agendamento getAgendamento(int idagendamento) {
			Conexao conn = null;
 			
 			try {
 				
 				conn = new Conexao();
 				ResultSet rs = conn.executeQuery("SELECT * FROM agendamento WHERE idagendamento = " + idagendamento + ";");
 				
 				if(rs.next()) {
 					return new Agendamento(
 							rs.getInt("idagendamento"),
 							rs.getString("data"),
 							rs.getString("localMorada"),
 							rs.getString("clinica"),
 							rs.getString("medico"),
 							rs.getString("tipo_atendimento"),
 							rs.getInt("idpaciente"));
 				}else {
 					return null;
 				}
 				
 			} catch(SQLException e) {
 				
 				return null;
 			}
		}
		
		public ResultSet ExcuteQuery(int idpaciente) {
 			
 			Conexao conn = null;
 			
 			try {
 				
 				conn = new Conexao();
 				ResultSet rs = conn.executeQuery("SELECT * FROM agendamento WHERE idpaciente = " + idpaciente + ";");
 				
 				return rs;
 				
 			} catch(SQLException e) {
 				
 				return null;
 			}
 			
 		}
		
		public boolean UpdateAgendamento(Agendamento a) {
 			
 			Conexao conn = null;
 			
 			try {
 				
 				conn = new Conexao();
 				String sql = "UPDATE agendamento SET "
 						+ "data = '" + a.getData() + "',"
 						+ "localMorada = '" + a.getLocalMorada() + "',"
 			 			+ "clinica = '" + a.getClinica() + "',"
 						+ "medico = '" + a.getMedico() + "',"
 						+ "tipo_atendimento = '" + a.getTipo_atendimento() +
 						"' WHERE idagendamento = " + a.getIdagendamento() + ";";
 				
 				System.out.println(sql);
 				conn.executeUpdate(sql);
 						
 				conn.fecharConexao();
 				
 				return true;
 				
 			} catch(SQLException e) {
 				
 				return false;
 			}
 			
 		}
		
		//A Partir daqui começa as atualizações
		
		public boolean UpdateAgendamentoEditado(Agendamento a) {
 			
 			Conexao conn = null;
 			
 			try {
 				
 				conn = new Conexao();
 				String sql = "UPDATE agendamento SET "
 						+ "data = '" + a.getData() + "',"
 			 			+ "clinica = '" + a.getClinica() + "',"
 						+ "tipo_atendimento = '" + a.getTipo_atendimento() +
 						"' WHERE idagendamento = " + a.getIdagendamento() + ";";
 				
 				System.out.println(sql);
 				conn.executeUpdate(sql);
 						
 				conn.fecharConexao();
 				
 				return true;
 				
 			} catch(SQLException e) {
 				
 				return false;
 			}
		}
		
		public ArrayList<Agendamento> getAgendamentos(int idpaciente) {
			Conexao conn = null;
 			
 			try {
 				
 				ArrayList<Agendamento> agendamentos = new ArrayList<Agendamento>();
 				Agendamento agendamento =  null;
 				
 				
 				conn = new Conexao();
 				ResultSet rs = conn.executeQuery("SELECT * FROM agendamento WHERE idpaciente =" + idpaciente + ";");
 				
 				while(rs.next()) {
 					
 					agendamento = new Agendamento(
 							rs.getInt("idagendamento"),
 							rs.getString("data"),
 							rs.getString("localMorada"),
 							rs.getString("clinica"),
 							rs.getString("medico"),
 							rs.getString("tipo_atendimento"),
 							rs.getInt("idpaciente")
 							);
 					
 					agendamentos.add(agendamento);
 							
 				}
 				
 				return agendamentos;
 				
 			} catch(SQLException e) {
 				
 				System.out.print("erro ao pegar os agendamentos");
 	            return new ArrayList<Agendamento>();
 				
 			}
		
		}
}