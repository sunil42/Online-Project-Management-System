/* 
 * Java script to choose between the webpages(create java file and the compile)
 */

function regvalidate()
{
    var RE1 = /^[a-z A-Z]+$/;
    var RE2 = /^.+@.+\..{3}$/;
    var RE3 = /^(\+91-|\+91|0)?\d{10}$/;

 if (document.registration.uname.value == "")
    {
        window.alert("Username should  NOT Be empty");
        document.registration.uname.focus();
        return false;
    }
    else

    if (RE1.test(document.registration.uname.value) == false)
    {
        window.alert("Username should contain only letters ");
        document.registration.name.focus();
        return false;
    }

    else
    if ((document.registration.email.value == "") || (document.registration.email.value == null))
    {
        window.alert("Email Id should not be empty");
        document.registration.email.focus();
        return false;
    }
    else
    if (RE2.test(document.registration.email.value) == false)
    {
        window.alert("Invalid Email Id");
        document.registration.email.focus();
        return false;
    }
    else
    if (document.registration.pwd.value == "")
    {
        window.alert("Password should NOT Be empty");
        document.registration.pwd.focus();
        return false;
    }
    else
    if (document.registration.dept.selectedIndex == 0)
    {
        window.alert("Choose any one Department ..,");
        document.registration.dept.focus();
        return false;
    }
    else
        
         if (document.registration.desi.selectedIndex == 0)
    {
        window.alert("Choose any one Designation ..,");
        document.registration.dept.focus();
        return false;
    }
    else
        
        if (document.registration.cno.value == "")
    {
        window.alert("Contact should  NOT Be empty");
        document.registration.cno.focus();
        return false;
    }
    else

    if (RE3.test(document.registration.cno.value) == false)
    {
        window.alert("Invalid contact No   ");
        document.registration.cno.focus();
        return false;
    }

    else
    {
        window.alert("You are Registered. Please Login.");
        return true;
    }
}

function loginval()
{
    var RE1 = /^[a-z A-Z]+$/;
    var RE2 = /^.+@.+\..{3}$/;

    if (document.login.uname.value == "")
    {
        window.alert("Username should  NOT Be empty");
        document.login.uname.focus();
        return false;
    }
    else

    if (RE1.test(document.login.uname.value) == false)
    {
        window.alert("username should contain only letters ");
        document.login.uname.focus();
        return false;
    }    
    else
        
    if (document.login.pwd.value == "")
    {
        window.alert("Password should NOT Be empty");
        document.login.pwd.focus();
        return false;
    }
     
    else
    {
       
        return true;
    }
}

