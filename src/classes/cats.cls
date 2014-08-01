public class cats
{
    private String raza; //public String raza;  
    private Integer cantidad; //public Integer cantidad;
    
    Public void actualiza(integer lacantidad)
    {
        cantidad = cantidad - lacantidad;
    }
 
    public void setraza (String laraza)
    {
 		raza = laraza;
    }
   
    public string getraza()
    {
        return raza;
    }
    
    public cats()
    {
		raza = 'xxxxx';
		cantidad = 0;        
    }
    
    public cats(String laraza, Integer lacantidad)
    {
			raza = laraza;
			cantidad = lacantidad;        
    }
}