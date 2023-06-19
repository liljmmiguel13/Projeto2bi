package Dao;
	
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import Model.Formulario;
	import Util.Conexao;
	
	public class FormularioDao {
		
		public boolean InserirFormulario(Formulario f) {
 			
 			Conexao conn = null;
 			
 			try {
 				conn = new Conexao();
 				conn.executeUpdate("INSERT INTO info_paciente(pergunta1, pergunta2, pergunta3, pergunta4, pergunta5, pergunta6, pergunta7) VALUES ("+
 						"'" + f.getPergunta1() + "',"  
 						+ "'" + f.getPergunta2() + "',"
 						+ "'"+ f.getPergunta3() + "',"
 						+ "'"+ f.getPergunta4() + "',"
 						+ "'"+ f.getPergunta5() + "',"
 						+ "'"+ f.getPergunta6() + "',"
 						+ "'" + f.getPergunta7() + "');");
 					return true;
 			} catch(SQLException e) {
 				return false;
 			}
 			
 		}
		
		public void DeleteFormulario(Formulario f) {
 			
 			Conexao conn = null;
 			
 			try {
 				
 				conn = new Conexao();
 				conn.executeUpdate("DELETE FROM formulario WHERE cod_form = " + f.getCod_form() + ";");
 				
 				conn.fecharConexao();
 				
 			} catch(SQLException e) {
 				
 				System.out.println("Falha ao deletar!");
 			}
 			
 		}
 		
 		public ResultSet ExcuteQuery(Formulario f) {
 			
 			Conexao conn = null;
 			
 			try {
 				
 				conn = new Conexao();
 				ResultSet rs = conn.executeQuery("SELECT FROM cod_form(pergunta1, pergunta2, pergunta3, pergunta4, pergunta5, pergunta6, pergunta7) WHERE cod_form = " + f.getCod_form() + ";");
 				
 				conn.fecharConexao();
 				
 				return rs;
 				
 			} catch(SQLException e) {
 				
 				return null;
 			}
 			
 		}
 		
 		public boolean UpdateFormulario(Formulario f) {
 			
 			Conexao conn = null;
 			
 			try {
 				
 				conn = new Conexao();
 				conn.executeUpdate("UPDATE cod_form SET"
 						+ "'pergunta1' = " + f.getPergunta1() + ","
 						+ "'pergunta2' = " + f.getPergunta2() + ","
 						+ "'pergunta3' = " + f.getPergunta3() + ","
 						+ "'pergunta4' = " + f.getPergunta4() + ","
 						+ "'pergunta5' = " + f.getPergunta5() + ","
 						+ "'pergunta6' = " + f.getPergunta6() + ","
 						+ "'pergunta7' = " + f.getPergunta4() + ";");
 						
 				conn.fecharConexao();
 				
 				return true;
 				
 			} catch(SQLException e) {
 				
 				return false;
 			}
 			
 		}
		
	}