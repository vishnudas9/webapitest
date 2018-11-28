<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="APICall.aspx.cs" Inherits="WebApplication2.APICall" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
    <title></title>
    <script src="js/jquery-3.3.1.min.js"></script>

    <script>  
         $(document).ready(function () {  
             $("#Save").click(function () {  
                 var LpusWhatsApp = new Object();
                 var broadcastdata = '[{ "phone": "919745302878", "message": "Whatsapp Test Message From LPLUS" }]';
                 LpusWhatsApp.BaseData = JSON.stringify(broadcastdata);
                 LpusWhatsApp.Token = "lplus123";
                 alert(JSON.stringify(LpusWhatsApp));
                 $.ajax({  
                     url: 'api/AjaxAPI/AjaxMethod',  
                     type: 'POST',  
                     dataType: 'json',  
                     data: LpusWhatsApp,  
                     success: function (data, textStatus, xhr) {  
                         console.log(data);  
                     },  
                     error: function (xhr, textStatus, errorThrown) {  
                         console.log('Error in Operation');  
                     }  
                 });  
             });  
         });  
    </script>  
</head>
<body>
   <form id="form1">  
        Name :- <input type="text" name="name" id="name" />  
        Surname:- <input type="text" name="surname" id="surname" />  
        <input type="button" id="Save" value="Save Data" />  
    </form>  
</body>

</html>
