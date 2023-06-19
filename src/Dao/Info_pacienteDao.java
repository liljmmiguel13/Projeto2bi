package Dao;
	
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import Model.Info_paciente;
    import Util.Conexao;

	public class Info_pacienteDao {
		
		public boolean InserirInfo_paciente(Info_paciente i) {
 			
 			Conexao conn = null;
 			
 			try {
 				conn = new Conexao();
 				conn.executeUpdate("INSERT INTO info_paciente(nome_pai, nome_mae, telefone_emergencia, tipo_sangue) VALUES ("+
 						"'" + i.getNome_pai() + "',"  
 						+ "'" + i.getNome_mae() + "',"
 						+ "'"+ i.getTelefone_emergencia() + "',"
 						+ "'" + i.getTipo_sangue() + "');");
 				
 					return true;
 			} catch(SQLException e) {
 				return false;
 			}
 			
 		}
		
		public void DeleteInfo_paciente(Info_paciente i) {
 			
 			Conexao conn = null;
 			
 			try {
 				
 				conn = new Conexao();
 				conn.executeUpdate("DELETE FROM paciente WHERE codigo_info = " + i.getCodigo_info() + ";");
 				
 				conn.fecharConexao();
 				
 			} catch(SQLException e) {
 				
 				System.out.println("Falha ao deletar!");
 			}
 			
 		}
 		
 		public ResultSet ExcuteQuery(Info_paciente i) {
 			
 			Conexao conn = null;
 			
 			try {
 				
 				conn = new Conexao();
 				ResultSet rs = conn.executeQuery("SELECT FROM info_paciente('nome_pae', 'nome_mae', 'telefone_emergencia', 'tipo_sangue') WHERE codigo_info = " + i.getCodigo_info() + ";");
 				
 				conn.fecharConexao();
 				
 				return rs;
 				
 			} catch(SQLException e) {
 				
 				return null;
 			}
 			
 		}
 		
 		public boolean UpdateInfo_paciente(Info_paciente i) {
 			
 			Conexao conn = null;
 			
 			try {
 				
 				conn = new Conexao();
 				conn.executeUpdate("UPDATE info_paciente SET"
 						+ "'nome_pai' = " + i.getNome_pai() + ","
 						+ "'nome_mae' = " + i.getNome_mae() + ","
 						+ "'telefone_emergencia' = " + i.getTelefone_emergencia() + ","
 						+ "'tipo_sangue' = " + i.getTipo_sangue() + ";");
 						
 				conn.fecharConexao();
 				
 				return true;
 				
 			} catch(SQLException e) {
 				
 				return false;
 			}
 			
 		}
		
	}