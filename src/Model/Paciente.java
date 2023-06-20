	package Model;

	public class Paciente {
	
	private int idpaciente;
	private String email;
	private String senha;
	private String nome;
	private String sexo;
	private String dt_nascimento;
	private String nacionalidade;
	private String cidade;
	private String estado;
	private String telefone;
	private String nome_pai;
	private String nome_mae;
	private String telefone_emergencia;
	private String tipo_sangue;
	
	public Paciente() {
		
	}
	
	public Paciente (String email, String senha, String nome, String sexo, String dt_nascimento, String nacionalidade, String cidade, String estado, String telefone, String nome_pai, String nome_mae, String telefone_emergencia, String tipo_sangue) {
		setEmail(email);
		setSenha(senha);
		setNome(nome);
		setSexo(sexo);
		setDt_nascimento(dt_nascimento);
		setNacionalidade(nacionalidade);
		setCidade(cidade);
		setEstado(estado);
		setTelefone(telefone);
		setNome_pai(nome_pai);
		setNome_mae(nome_mae);
		setTelefone_emergencia(telefone_emergencia);
		setTipo_sangue(tipo_sangue);
		
	}
	public Paciente (int idpaciente, String email, String senha, String nome, String sexo, String dt_nascimento, String nacionalidade, String cidade, String estado, String telefone, String nome_pai, String nome_mae, String telefone_emergencia, String tipo_sangue) {
		setIdpaciente(idpaciente);
		setEmail(email);
		setSenha(senha);
		setNome(nome);
		setSexo(sexo);
		setDt_nascimento(dt_nascimento);
		setNacionalidade(nacionalidade);
		setCidade(cidade);
		setEstado(estado);
		setTelefone(telefone);
		setNome_pai(nome_pai);
		setNome_mae(nome_mae);
		setTelefone_emergencia(telefone_emergencia);
		setTipo_sangue(tipo_sangue);
		
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public int getIdpaciente() {
		return idpaciente;
	}


	public void setIdpaciente(int idpaciente) {
		this.idpaciente = idpaciente;
	}


	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getDt_nascimento() {
		return dt_nascimento;
	}

	public void setDt_nascimento(String dt_nascimento) {
		this.dt_nascimento = dt_nascimento;
	}

	public String getNacionalidade() {
		return nacionalidade;
	}

	public void setNacionalidade(String nacionalidade) {
		this.nacionalidade = nacionalidade;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}	
	
}