<!DOCTYPE HTML> 
<html> <head>  //sign-up module where table is created and post method is called for registration
        <title>Sign-Up</title> 
        <link rel="stylesheet" type="text/css" href="styles/formstyle.css" />
    </head> <body id="body-color">
        <div id="Sign-Up"> 
            <fieldset style="width:30%"><legend>Registration Form</legend> 
                <table border="0"> 
                    <tr> 
                    <form method="POST" action="connectivity-sign-up.php"> 
                        <td>Name</td>
                        <td> <input type="text" name="name"></td> </tr> 
                        <tr> 
                            <td>Email</td>
                            <td> <input type="text" name="email"></td> </tr> 
                        <tr> 
                            <td>UserName</td>
                            <td> <input type="text" name="user"></td> </tr> 
                        <tr> 
                            <td>Password</td><td>
                                <input type="password" name="pass"></td> </tr> 
                        <tr> 
                            <td>Confirm Password </td>
                            <td>
                                <input type="password" name="cpass"></td> </tr> 
                        <tr> 
                            <td><input id="button" type="submit" name="submit" value="Sign-Up"></td> 
                        
                        </tr> 
                    
                    </form> 
                  
                </table>
            
            </fieldset>
        
        </div> 
    
    </body> 

</html>




