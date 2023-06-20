package Dao;

	import java.sql.ResultSet;
	import java.sql.SQLException;
	import Model.Agendamento;
	import Util.Conexao;

	public class AgendamentoDao {
	
		public boolean InserirAgendamento(Agendamento a) {
			
			Conexao conn = null;
			
			try {
				
				conn = new Conexao();
				conn.executeUpdate("INSERT INTO agendamento(data, localMorada, clinica, medico, tipo_atendimento) VALUES (" +
						"'" + a.getData() + "',"  
						+ "'" + a.getLocalMorada() + "',"
						+ "'"+ a.getClinica() + "',"
						+ "'" + a.getMedico() + "'," 
						+ "'" + a.getTipo_atendimento() + "');");
					
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
				conn.executeUpdate("DELETE FROM idagendamento WHERE idagendamento = " + idagendamento + ";");
				
				conn.fecharConexao();
				
			} catch(SQLException e) {
				
				System.out.println("Falha ao deletar!");
			}
			
		}
		
		public ResultSet ExcuteQuery(Agendamento a) {
 			
 			Conexao conn = null;
 			
 			try {
 				
 				conn = new Conexao();
 				ResultSet rs = conn.executeQuery("SELECT * FROM agendamento(data, localMorada, clinica, medico, tipo_atendimento) WHERE idagendamento = " + a.getIdagendamento() + ";");
 				
 				conn.fecharConexao();
 				
 				return rs;
 				
 			} catch(SQLException e) {
 				
 				return null;
 			}
 			
 		}
		
		public boolean UpdateAgendamento(Agendamento a) {
 			
 			Conexao conn = null;
 			
 			try {
 				
 				conn = new Conexao();
 				conn.executeUpdate("UPDATE agendamento SET"
 						+ "'data' = " + a.getData() + ","
 						+ "'localMorada' = " + a.getLocalMorada() + ","
 			 			+ "'clinica' = " + a.getClinica() + ","
 						+ "'medico' = " + a.getMedico() + ","
 						+ "'tipo_atendimento' = " + a.getTipo_atendimento() +
 						"WHERE idagendamento = " + a.getIdagendamento() + ";");
 						
 				conn.fecharConexao();
 				
 				return true;
 				
 			} catch(SQLException e) {
 				
 				return false;
 			}
 			
 		}
		
}