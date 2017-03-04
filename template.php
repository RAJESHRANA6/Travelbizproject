<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <title><?php echo $title; ?> </title>
        <link rel="stylesheet" type="text/css" href="styles/stylesheet.css" />
        
    </head>
    <body>
        <div id="wrapper">
            <div id="banner">
        </div>
            
            <nav id="navigation">
                <ul id="nav">
                    <li><a href="home.php">Home</a></li>     
                <li><a href="#">About</a></li>
                <li><a href="#">Bus info</a></li>
                <li><a href="sign-up.php">Registration</a></li>
               
        
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
