function add_courses_valli() {
          var name = document.course_form.name;
          var email = document.course_form.email;
          var category = document.course_form.category;
          var duration = document.course_form.duration;
          var fee = document.course_form.fee;
          var myfile = document.course_form.myfile;
          var url = document.course_form.url;             
          var description = document.course_form.description;
          var letters = /^[A-Za-z  ]+$/;
          var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
          if (name.value.length <= 0) {
                    alert("name is required");
                    name.focus();
                    return false;
          }
          if (!name.value.match(letters)) {
                    alert("enter alphabets at name");
                    name
                    .focus();
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
          if (category.value == "category") {
                    alert("Category  is required...");
                    category .focus();
                    return false;
                  }
          if (duration.value.length <= 0) {
                    alert("duration is required");
                    duration.focus();
                    return false;
          }     
          if (fee.value.length <= 0) {
                    alert("fee is required");
                    fee.focus();
                    return false;
          }  
          if (myfile.value.length == "") {
                    alert("please upload your course photo");
                    myfile.focus();
                    return false;
                  } 
          if (url.value.length <= 0) {
                    alert("please upload videourl");
                    url.focus();
                    return false;
          }
          if (description.value.length <= 0) {
                    alert("write the description about class");
                    description.focus();
                    return false;
          } 
          else{
                    alert("Course added Successfully");
                    return true;
          }           






}