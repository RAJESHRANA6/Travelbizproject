<!DOCTYPE html>

<html>//specify the type of document
    <head>//header of html file
        <meta charset="UTF-8">
        <title><?php echo $title; ?> </title>//title
        <link rel="stylesheet" type="text/css" href="styles/stylesheet.css" />
        
    </head>
    <body>
        <div id="wrapper">
            <div id="banner">
        </div>
            
            <nav id="navigation">
                <ul id="nav">
                    <li><a href="home.php">Home</a></li>     //list of module shown at home page
                <li><a href="#">About</a></li>               //about bus pass system
                <li><a href="#">Bus info</a></li>            //bus information
                <li><a href="sign-up.php">Registration</a></li> //sign-up module
               
        
                <li><a href="#">Login</a></li>
                
                </ul>  
        </nav>
            <div id="content_area">
              <?php echo $content; ?>  
            </div>
            
            <div id="sidebar">
           
            </div>
            <footer>
                <p> all rights reserved </p>
            </footer>
        </div>
          
    </body>
</html>
