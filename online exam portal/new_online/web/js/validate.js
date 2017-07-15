function validateAddTestForm()
{
    if(document.addTest.questions.value == null || document.addTest.questions.value=='')
        {
            alert("Please Type The Questions");
            document.addTest.questions.focus();
            return false;
        }
    if(document.addTest.a.value == null || document.addTest.a.value=='')
        {
            alert("Please Fill Option A");
            document.addTest.a.focus();
            return false;
        }
    if(document.addTest.b.value == null || document.addTest.b.value=='')
        {
            alert("Please Fill Option B");
            document.addTest.b.focus();
            return false;
        }
    if(document.addTest.c.value == null || document.addTest.c.value=='')
        {
            alert("Please Fill Option C");
            document.addTest.c.focus();
            return false;
        }
    if(document.addTest.d.value == null || document.addTest.d.value=='')
        {
            alert("Please Fill Option D");
            document.addTest.d.focus();
            return false;
        }
    if(document.addTest.rightans.value == -1)
        {
            alert("Please Selece The Right Option");
            document.addTest.rightans.focus();
            return false;
        }
        if(document.addTest.marks.value == null || document.addTest.marks.value == '')
        {
            alert("Please input the marks of this question");
            document.addTest.marks.focus();
            return false;
        }
        var re = /[0-9]{1,3}/;
        if(!re.test(document.addTest.marks.value))
            {
                alert("Error: marks should be integer and minimum one length !");
                document.addTest.marks.focus();
                return false;
            }
    if(document.addTest.description.value == null || document.addTest.description.value=='')
        {
            alert("Please Write The Description");
            document.addTest.description.focus();
            return false;
        }
    
    /* image validation  */
        var fuData = document.getElementById('fileChooser');
        var FileUploadPath = fuData.value;
        //To check if user upload any file
        if (FileUploadPath == '')        
        {
//            alert("Please upload an image");
//            document.getElementById('fileChooser').focus();
//            return false;
        } 
        else
        {
            var Extension = FileUploadPath.substring(
            FileUploadPath.lastIndexOf('.') + 1).toLowerCase();
                    //The file uploaded is an image
            if (Extension == "gif" || Extension == "png" || Extension == "bmp" || Extension == "jpeg" || Extension == "jpg")
            {
//                        // To Display
//                        if (fuData.files && fuData.files[0])
//                        {
//                            var reader = new FileReader();                            
//                            reader.onload = function(e)
//                            {
//                                $('#blah').attr('src', e.target.result);
//                            }
//                            reader.readAsDataURL(fuData.files[0]);
//                       }
             } 
                        //The file upload is NOT an image
            else 
            {
                    alert("Photo only allows file types of GIF, PNG, JPG, JPEG and BMP. ");
                    document.getElementById('fileChooser').focus();
                    return false;
            }
        }
}

function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#blah')
                    .attr('src', e.target.result)
                    .width(400)
                    .height(200);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
    
    function validateAfterLogIn()
    {
        var sub = document.afterAdminLogin.subjects;
        var ques = document.afterAdminLogin.questions;
        var time = document.afterAdminLogin.time;
        if(sub.value == -1)
        {
            alert("Please select any subject");
            sub.focus();
            return false;
        }
        if(ques.value == '' || ques.value == null || ques.value == '0')
        {
            alert("Please enter the total number of questions");
            ques.focus();
            return false;
        }
        if(time.value == '' || time.value == null || time.value == '0')
        {
            alert("please enter the time of the test in minutes");
            time.focus();
            return false;
        }
    }

function validateAdminLogin()
{
    if(document.adminLogin.name.value == '' || document.adminLogin.name.value == null)
        {
            alert("Please Fill The Name");
            document.adminLogin.name.focus();
            return false;
        }
    if(document.adminLogin.password.value == '' || document.adminLogin.password.value == null)
        {
            alert("Please Fill The Password");
            document.adminLogin.password.focus();
            return false;
        }
}

//$("#rule").prop("disabled" , true);
//
//function checkPassword()
//{
//    $("#rule").prop("disabled" , true);
//}

function validateUserRegister()
{
    if(document.userRegister.name.value == '' || document.userRegister.name.value == null)
        {
            alert("Please Fill The Name");
            document.userRegister.name.focus();
            return false;
        }
    if(document.userRegister.password.value == '' || document.userRegister.password.value == null)
        {
            alert("Please Fill The Password");
            document.userRegister.password.focus();
            return false;
        }
    else
    {
        if(document.userRegister.password.value.length < 6 )
            {
                alert("Password must contain at least six characters!");
                document.userRegister.password.focus();
                return false;
            }
        re = /[0-9]/;
        if(!re.test(document.userRegister.password.value))
            {
                alert("Error: password must contain at least one number (0-9)!");
                document.userRegister.password.focus();
                return false;
            }
        re = /[a-z]/;
        if(!re.test(document.userRegister.password.value))
            {
                alert("Error: password must contain at least one lowercase letter (a-z)!");
                document.userRegister.password.focus();
                return false;
            }
         re = /[A-Z]/;
        if(!re.test(document.userRegister.password.value))
            {
                alert("Error: password must contain at least one uppercase letter (A-Z)!");
                document.userRegister.password.focus();
                return false;
            }
    }
    if(document.userRegister.repassword.value == '' || document.userRegister.repassword.value == null)
        {
            alert("Please Fill The Password Again");
            document.userRegister.password.focus();
            return false;
        }
    else if(document.userRegister.repassword.value != document.userRegister.password.value)
        {
            alert("Mismatch Password ! Please enter same password again");
            document.userRegister.repassword.focus();
            return false;
        }
    var m = document.userRegister.mail.value;
//    if(document.userRegister.mail.value == '' || document.userRegister.mail.value == null)
      if(m == '' || m == null) 
        {
            alert("Please Fill The EmailId");
            document.userRegister.mail.focus();
            return false;
        }
//    var m = document.userRegister.mail.value;
    var patt = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-z]{2,4})+$/;
    if (!patt.test(m))
        {
            alert("Please provide a valid email address");
            document.userRegister.mail.focus();
            return false;
        }
    if(document.userRegister.branch.value == '-1')
        {
            alert("Please Select Right Branch");
            document.userRegister.branch.focus();
            return false;
        }
    if(document.userRegister.sem.value == '-1')
        {
            alert("Please Select Right Year");
            document.userRegister.sem.focus();
            return false;
        }
        if(document.userRegister.sec.value == '-1')
        {
            alert("Please Select Right Year");
            document.userRegister.sec.focus();
            return false;
        }
    var n = document.userRegister.rollno.value;
    if(n == '' || n == null)
        {
            alert("Please enter the university roll.no");
            document.userRegister.rollno.focus();
            return false;
        }
    var pattr = /([1])+([0-9]{1})+(029)+(10|13|31|40|00|21|32)+([0-9]{3})/
    if(!pattr.test(n) || n.length!=10)
        {
            alert("please insert a valid university rollno");
            document.userRegister.rollno.focus();
            return false;
        }
}

function validateUserLogIn()
{
    var rollno = document.userlogin.rollno.value;
    if(rollno == '' || rollno == null)
        {
            alert("Please enter the university roll.no");
            document.userlogin.rollno.focus();
            return false;
        }
    var pattr = /([1])+([0-9]{1})+(029)+(10|13|31|40|00|21|32)+([0-9]{3})/
    if(!pattr.test(rollno) || rollno.length!=10)
        {
            alert("please insert a valid university rollno");
            document.userlogin.rollno.focus();
            return false;
        }
    if(document.userlogin.password.value == '' || document.userlogin.password.value == null)
        {
            alert("Please Fill The Password");
            document.userlogin.password.focus();
            return false;
        }
}

function validateInfo()
{
    var section = document.userViewAdmin.sec.value;
    var semester = document.userViewAdmin.sem.value;
    if(section =='' || section == null)
    {
        alert("Please input the section...");
        document.userViewAdmin.section.focus();
        return false;
    }
    if(semester == '' || semester == null)
    {
        alert("Please input the semester...");
        document.userViewAdmin.sem.focus();
        return false;
    }
    var par = /[a-zA-Z]{1}/;
    if(!par.test(section) || section.length != 1)
    {
        alert("Please insert a valid section");
        document.userViewAdmin.sec.focus();
        return false;
    }
    if(semester<'1' || semester>'8')
    {
        alert("Please insert a valid semester");
        document.userViewAdmin.sem.focus();
        return false;
    }
}
function validateSelectSubject()
{
        var sub = document.selectSubject.subjects;
        if(sub.value == -1)
        {
            alert("Please select any subject");
            sub.focus();
            return false;
        }
}

function validateSelectTest()
{
        var test = document.selectTest.Tests;
        if(test.value == -1)
        {
            alert("Please select any subject");
            test.focus();
            return false;
        }
}