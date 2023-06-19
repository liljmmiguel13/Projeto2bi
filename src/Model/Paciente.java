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
	private int codigo_info;
	
	public Paciente() {
		
	}
	
	public Paciente (String email, String senha, String nome, String sexo, String dt_nascimento, String nacionalidade, String cidade, String estado, String telefone, int codigo_info) {
		setEmail(email);
		setSenha(senha);
		setNome(nome);
		setSexo(sexo);
		setDt_nascimento(dt_nascimento);
		setNacionalidade(nacionalidade);
		setCidade(cidade);
		setEstado(estado);
		setTelefone(telefone);
		setCodigo_info(codigo_info);
		
	}
	public Paciente (int idpaciente, String email, String senha, String nome, String sexo, String dt_nascimento, String nacionalidade, String cidade, String estado, String telefone, int codigo_info) {
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
		setCodigo_info(codigo_info);
		
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

	public int getCodigo_info() {
		return codigo_info;
	}

	public void setCodigo_info(int codigo_info) {
		this.codigo_info = codigo_info;
	}
	
	
	
}