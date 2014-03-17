package chapulh_alfa

class Empleado {
	Long id
	Long version

	String _email
	String _password

/*	def constraints = {
		email(email:true)
		password(blank:false,password:true)
	}*/

    static constraints = {
    	_email email:true
    	_password password:true, nullable:false
    }
	String toString(){
		return _email
	}
    
}
