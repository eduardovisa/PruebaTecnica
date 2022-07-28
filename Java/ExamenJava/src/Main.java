import javax.swing.JOptionPane;

public class Main {

	public static void main(String[] args) {

		Persona p1 = new Persona (JOptionPane.showInputDialog("Nombre: "), Integer.parseInt(JOptionPane.showInputDialog("Edad: ")), 
				JOptionPane.showInputDialog("Sexo (h o m): ").charAt(0), Double.parseDouble(JOptionPane.showInputDialog("Peso (kg): ")), Double.parseDouble(JOptionPane.showInputDialog("Altura (metros): ")));
		imprimeDatos(p1);
		Persona p2 = new Persona (JOptionPane.showInputDialog("Nombre: "), Integer.parseInt(JOptionPane.showInputDialog("Edad: ")), 
				JOptionPane.showInputDialog("Sexo (h o m): ").charAt(0), Double.parseDouble(JOptionPane.showInputDialog("Peso (kg): ")), Double.parseDouble(JOptionPane.showInputDialog("Altura (metros): ")));
		imprimeDatos(p2);
		Persona p3 = new Persona (JOptionPane.showInputDialog("Nombre: "), Integer.parseInt(JOptionPane.showInputDialog("Edad: ")), 
				JOptionPane.showInputDialog("Sexo (h o m): ").charAt(0), Double.parseDouble(JOptionPane.showInputDialog("Peso (kg): ")), Double.parseDouble(JOptionPane.showInputDialog("Altura (metros): ")));
		imprimeDatos(p3);
		
	} // class main
	
	public static void imprimeDatos (Persona p) {
		String sexo = "Hombre";
		if (!p.comprobarSexo(p.getPersona_sexo())) {
			sexo = "hombre";
		}
		if (p.getPersona_sexo() == 'm') {
			sexo = "Mujer";
		}
		String peso = "Ideal";
		if (p.calcIMC() == -1) {
			peso = "Por debajo";
		} else if (p.calcIMC() == 1) {
			peso = "Sobrepeso";
		}
		String edad = "Mayor";
		if (p.getPersona_edad() < 18) {
			edad = "Menor";
		}
		JOptionPane.showMessageDialog(null, 
						   "| Nombre: " + p.getPersona_nombre() + 
						   "\n| Edad: " + p.getPersona_edad() + " - " + edad +
						   "\n| NSS: " + p.getPersona_nss() + 
						   "\n| Sexo: " + sexo + 
						   "\n| Peso (kg): " + p.getPersona_peso() + " - " + peso +
						   "\n| Altura (m): " + p.getPersona_altura()
						   );
		System.out.println("+========================================+");
		System.out.println(
						   "| Nombre: " + p.getPersona_nombre() +
						   "\n| Edad: " + p.getPersona_edad() + " - " + edad +
						   "\n| NSS: " + p.getPersona_nss() + 
						   "\n| Sexo: " + sexo + 
						   "\n| Peso (kg): " + p.getPersona_peso() + " - " + peso +
						   "\n| Altura (m): " + p.getPersona_altura()
						   );
		System.out.println("+========================================+");
	} // imrpimeCalculo

} // class Main