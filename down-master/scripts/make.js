 function make(txtValue1)
 {
	 
	 var b='';
	 for(var i = 0; i < txtValue1.length; i++)
		 {
		 if(txtValue1.charAt(i)>='a' &&  txtValue1.charAt(i)<='z' )
			 {
			 	b=b+txtValue1.charAt(i).toUpperCase();
			 	
			 }
		 else
			 {
			 b=b+txtValue1.charAt(i);
			 }
		 }
	
	 return b;
 }
 