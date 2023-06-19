package Model;

public class Formulario {
	
	private int cod_form;
	private String pergunta1;
	private String pergunta2;
	private String pergunta3;
	private String pergunta4;
	private String pergunta5;
	private String pergunta6;
	private String pergunta7;
	
	public Formulario() {
		
	}
	
	public Formulario(String pergunta1, String pergunta2, String pergunta3, String pergunta4, String pergunta5, String pergunta6, String pergunta7) {
		setPergunta1(pergunta1);
		setPergunta2(pergunta2);
		setPergunta3(pergunta3);
		setPergunta4(pergunta4);
		setPergunta5(pergunta5);
		setPergunta6(pergunta6);
		setPergunta7(pergunta7);
	}
	
	public Formulario(int cod_form, String pergunta1, String pergunta2, String pergunta3, String pergunta4, String pergunta5, String pergunta6, String pergunta7) {
		setCod_form(cod_form);
		setPergunta1(pergunta1);
		setPergunta2(pergunta2);
		setPergunta3(pergunta3);
		setPergunta4(pergunta4);
		setPergunta5(pergunta5);
		setPergunta6(pergunta6);
		setPergunta7(pergunta7);
	}
	

	public int getCod_form() {
		return cod_form;
	}

	public void setCod_form(int cod_form) {
		this.cod_form = cod_form;
	}

	public String getPergunta1() {
		return pergunta1;
	}

	public void setPergunta1(String pergunta1) {
		this.pergunta1 = pergunta1;
	}

	public String getPergunta2() {
		return pergunta2;
	}

	public void setPergunta2(String pergunta2) {
		this.pergunta2 = pergunta2;
	}

	public String getPergunta3() {
		return pergunta3;
	}

	public void setPergunta3(String pergunta3) {
		this.pergunta3 = pergunta3;
	}

	public String getPergunta4() {
		return pergunta4;
	}

	public void setPergunta4(String pergunta4) {
		this.pergunta4 = pergunta4;
	}

	public String getPergunta5() {
		return pergunta5;
	}

	public void setPergunta5(String pergunta5) {
		this.pergunta5 = pergunta5;
	}

	public String getPergunta6() {
		return pergunta6;
	}

	public void setPergunta6(String pergunta6) {
		this.pergunta6 = pergunta6;
	}

	public String getPergunta7() {
		return pergunta7;
	}

	public void setPergunta7(String pergunta7) {
		this.pergunta7 = pergunta7;
	}
	
	
	
}