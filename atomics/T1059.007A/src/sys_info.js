var objWMIService = GetObject( "winmgmts:\\\\.\\root\\cimv2" );
var objList = objWMIService.ExecQuery( "Select * from Win32_ComputerSystem" );

var enumItems = new Enumerator(objList)
for (;!enumItems.atEnd();enumItems.moveNext()){
    var objItem = enumItems.item();
    var strDomain = objItem.Domain;
	var strName = objItem.Name;
	var strManu = objItem.Manufacturer;
	var strModel = objItem.Model;
	
	WScript.Echo("Domain: " + strDomain);
    WScript.Echo("Computer Name: " + strName);
	WScript.Echo("Manufacturer: " + strManu);
	WScript.Echo("Model: " + strModel);
}
