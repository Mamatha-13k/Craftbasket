function tutor_validation() {
          var fname = document.tutor_reg.fname;
          var phno = document.tutor_reg.phno;
          var email = document.tutor_reg.email;
          var exp = document.tutor_reg.exp;
          var category = document.tutor_reg.category;
          var gender = document.tutor_reg.gender;
          var image = document.tutor_reg.image;
          var password = document.tutor_reg.password;
          var password2 = document.tutor_reg.password2;
        
       
          var letters = /^[A-Za-z  ]+$/;
          var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
          if (fname.value.length <= 0) {
                    alert("name is required");
                    fname.focus();
                    return false;
          }
          if (!fname.value.match(letters)) {
                    alert("enter alphabets at name");
                    fname
                    .focus();
                    return false;
                  }
          
          if (phno.value.length <= 0) {
                    alert("phone number is required");
                    phno.focus();
                    return false;
          }
          if (isNaN(phno.value)) {
                    alert("please enter digits for phonenumber");
                    phno.focus();
                    return false;
          }
          if (phno.value.length != 10) {
                    alert("Phonenumber must contain 10 digits");
                    phno.focus();
                    return false;
          }
          if (email.value.length <= 0) {
                    alert("please enter gmail");
                    email.focus();
                    return false;
                  }
                
          if (!email.value.match(mailformat)) {
                    alert("invalid gmail");
                    email.focus();
                    return false;
          }
          if (exp.value.length <= 0) {
                    alert("experience is required");
                    exp.focus();
                    return false;
          }
         
          if (category.value == "Category") {
                    alert("Category  is required...");
                    category .focus();
                    
                    return false;}
          if (gender.value == "Gender") {
                    alert("Gender  is required...");
                    gender.focus();
                    return false;
          }
          if (image.value.length == "") {
                    alert("please upload your profile photo");
                    image.focus();
                    return false;
                  }
          
          if (password.value.length <= 0) {
                    alert("Password cannot be blank");
                    password.focus();
                    return false;
                  }
          if (password.value.length != 6) {
                    alert("password must contain 6 characters");
                    password.focus();
                    return false;
          }
          if (password2.value.length <= 0) {
                    alert("Password cannot be blank");
                    password2.focus();
                    return false;
                  }
          if (password2.value != password.value) {
                    alert("confirmPassword must be same ");
                    password2.focus();
                    return false;
          }
          else{
                    alert("Registration Successful");
                    return true;
          }        

          
          
          }