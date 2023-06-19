package Model;

public class Info_paciente {
	
	private int codigo_info;
	private String nome_pai;
	private String nome_mae;
	private String telefone_emergencia;
	private String tipo_sangue;
	private int cod_form;
	
	public Info_paciente() {
		
	}
	
	public Info_paciente (String nome_pai, String nome_mae, String telefone_emergencia, String tipo_sangue, int cod_form) {
		setNome_pai(nome_pai);
		setNome_mae(nome_mae);
		setTelefone_emergencia(telefone_emergencia);
		setTipo_sangue(tipo_sangue);
		setCod_form(cod_form);
	}

	public Info_paciente (int codigo_info, String nome_pai, String nome_mae, String telefone_emergencia, String tipo_sangue, int cod_form) {
		setCodigo_info(codigo_info);
		setNome_pai(nome_pai);
		setNome_mae(nome_mae);
		setTelefone_emergencia(telefone_emergencia);
		setTipo_sangue(tipo_sangue);
		setCod_form(cod_form);
	}
	
	
	public int getCodigo_info() {
		return codigo_info;
	}

	public void setCodigo_info(int codigo_info) {
		this.codigo_info = codigo_info;
	}

	public String getNome_pai() {
		return nome_pai;
	}

	public void setNome_pai(String nome_pai) {
		this.nome_pai = nome_pai;
	}

	public String getNome_mae() {
		return nome_mae;
	}

	public void setNome_mae(String nome_mae) {
		this.nome_mae = nome_mae;
	}

	public String getTelefone_emergencia() {
		return telefone_emergencia;
	}

	public void setTelefone_emergencia(String telefone_emergencia) {
		this.telefone_emergencia = telefone_emergencia;
	}

	public String getTipo_sangue() {
		return tipo_sangue;
	}

	public void setTipo_sangue(String tipo_sangue) {
		this.tipo_sangue = tipo_sangue;
	}

	public int getCod_form() {
		return cod_form;
	}

	public void setCod_form(int cod_form) {
		this.cod_form = cod_form;
	}
	
	
	
}