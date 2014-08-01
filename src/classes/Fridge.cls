public class Fridge implements KitchenUtility {
	
    private String modelNumber;
	private Integer numberInStock;
	public final static Integer stockThreshold = 5;

    public void updateStock(Integer justSold) 
    {
		numberInStock = numberInStock - justSold;
	}
  
    public void setmodelNumber(string themodelnumber )
    {
        modelNumber=themodelnumber;
    }
    
    public string getmodelnumber()
    {
        return modelNumber;
    }
    
    public void setnumberInStock (Integer thenumberInStock)
    {
		numberInStock = thenumberInStock;
    }
    
    public Integer getnumberInStock ()
    {
		return numberInStock;
	}
    public Fridge()
    {
		modelNumber = 'xx-xx';
		numberInStock = 0;        
    }
	
    public Fridge(string themodelnumber, Integer thenumberInStock)
    {
		modelNumber = themodelnumber;
        numberInStock = thenumberInStock;
	}
    
    public static void debug(Fridge aFridge)
    {
        System.debug('El Modelo: ' + aFridge.getmodelnumber());
        System.debug('La cantidad: ' + aFridge.getnumberInStock());
    }
 
    public Integer ecoRating {
		get { return ecoRating; }
		set { ecoRating = value; if (ecoRating < 0) ecoRating =0; }
	}
}