public with sharing class xxxxx {
public integer a = 0;
public integer b = 1;
public integer var =1

public void mostrar(){
System.debug(a); 
System.debug(b);

for(integer i=0; i<30 ; i++)

{
	System.debug(var);
	a = b;
	b = var;
	var = a+b;
	

}

}
}