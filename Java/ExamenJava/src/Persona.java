
public class Persona {

	private String persona_nombre = "";
	private int persona_edad = 0;
	private String persona_nss;
	private char persona_sexo = 'h';
	private double persona_peso = 0;
	private double persona_altura = 0;
	
	public Persona(String persona_nombre, int persona_edad, char persona_sexo,
			double persona_peso, double persona_altura) {
		super();
		this.persona_nombre = persona_nombre;
		this.persona_edad = persona_edad;
		this.persona_sexo = persona_sexo;
		this.persona_peso = persona_peso;
		this.persona_altura = persona_altura;
		this.persona_nss = generaNss();
	} // constructor
	
	public double calcIMC () {
		double imc = 0;
		int res = 0;
		imc = getPersona_peso() / (Math.pow(getPersona_altura(), 2));
		if (getPersona_sexo() == 'h') {
			if (imc < 20) {
				res = -1;
			}
			if (imc >= 20 && imc <= 25) {
				res = 0;
			} if (imc > 25) {
				res = 1;
			}
		}
		if (getPersona_sexo() == 'm') {
			if (imc < 19) {
				res = -1;
			}
			if (imc >= 19 && imc <= 24) {
				res = 0;
			} if (imc > 24) {
				res = 1;
			}
		}
		return res;
	} // calcIMC

	public boolean comprobarSexo (char sexo) {
		if (getPersona_sexo() == 'h' || getPersona_sexo() == 'm') {
			return true;
		}
		return false;
	} // comprobarSexo
	
	public String generaNss () {
		String alfanumerico = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"; 
        StringBuilder builder = new StringBuilder(9); 
        for (int m = 0; m < 9; m++) { 
            int myindex = (int)(alfanumerico.length() * Math.random()); 
            builder.append(alfanumerico.charAt(myindex)); 
        } 
        return builder.toString(); 
	} // generaNss
	
	public String getPersona_nombre() {
		return persona_nombre;
	}

	public void setPersona_nombre(String persona_nombre) {
		this.persona_nombre = persona_nombre;
	}

	public int getPersona_edad() {
		return persona_edad;
	}

	public void setPersona_edad(int persona_edad) {
		this.persona_edad = persona_edad;
	}

	public String getPersona_nss() {
		return persona_nss;
	}

	public char getPersona_sexo() {
		return persona_sexo;
	}

	public void setPersona_sexo(char persona_sexo) {
		this.persona_sexo = persona_sexo;
	}

	public double getPersona_peso() {
		return persona_peso;
	}

	public void setPersona_peso(double persona_peso) {
		this.persona_peso = persona_peso;
	}

	public double getPersona_altura() {
		return persona_altura;
	}

	public void setPersona_altura(double persona_altura) {
		this.persona_altura = persona_altura;
	}

	@Override
	public String toString() {
		return "Persona [persona_nombre=" + persona_nombre + ", persona_edad=" + persona_edad + ", persona_nss="
				+ persona_nss + ", persona_sexo=" + persona_sexo + ", persona_peso=" + persona_peso
				+ ", persona_altura=" + persona_altura + "]";
	}
	
} // class Persona