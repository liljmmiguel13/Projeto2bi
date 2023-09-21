package Model;

public class Agendamento {
	
	private int idagendamento;
	private String data;
	private String localMorada;
	private String clinica;
	private String medico;
	private String tipo_atendimento;
	private int idpaciente;
	
	public Agendamento() {
		
	}
	
	public Agendamento (String data, String clinica, String tipo_atendimento) {
		setData(data);
		setClinica(clinica);
		setTipo_atendimento(tipo_atendimento);
		
	}
	
	public Agendamento (String data, String localMorada, String clinica, String medico, String tipo_atendimento) {
		setData(data);
		setLocalMorada(localMorada);
		setClinica(clinica);
		setMedico(medico);
		setTipo_atendimento(tipo_atendimento);
		
	}
	
	public Agendamento (int idagendamento, String data, String localMorada, String clinica, String medico, String tipo_atendimento, int idpaciente) {
		setIdagendamento(idagendamento);
		setData(data);
		setLocalMorada(localMorada);
		setClinica(clinica);
		setMedico(medico);
		setTipo_atendimento(tipo_atendimento);
		setIdpaciente(idpaciente);
		
	}
	

	public int getIdagendamento() {
		return idagendamento;
	}

	public void setIdagendamento(int idagendamento) {
		this.idagendamento = idagendamento;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getLocalMorada() {
		return localMorada;
	}

	public void setLocalMorada(String localMorada) {
		this.localMorada = localMorada;
	}

	public String getClinica() {
		return clinica;
	}

	public void setClinica(String clinica) {
		this.clinica = clinica;
	}

	public String getMedico() {
		return medico;
	}

	public void setMedico(String medico) {
		this.medico = medico;
	}

	public String getTipo_atendimento() {
		return tipo_atendimento;
	}

	public void setTipo_atendimento(String tipo_atendimento) {
		this.tipo_atendimento = tipo_atendimento;
	}

	public int getIdpaciente() {
		return idpaciente;
	}

	public void setIdpaciente(int idpaciente) {
		this.idpaciente = idpaciente;
	}
	
}
