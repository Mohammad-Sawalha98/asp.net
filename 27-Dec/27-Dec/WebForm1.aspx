<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_27_Dec.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1>Hi Dear</h1>
            <p> Here we will use master page for the first time</p> <br /> <br />

    <section class="vh-100 bg-image"
  style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Create an account</h2>


                <div class="form-outline mb-4">
                    <asp:TextBox  runat="server" type="text" ID="name" class="form-control form-control-lg"></asp:TextBox> 
                    <label class="form-label" for="form3Example1cg">Your Name</label> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="Required Name" ControlToValidate="name" ValidationGroup="g1"></asp:RequiredFieldValidator><br />
                  
                </div>

                <div class="form-outline mb-4">
                    <asp:TextBox ID="emailcheck" type="email" runat="server" class="form-control form-control-lg"></asp:TextBox>
                      <label class="form-label" for="form3Example3cg">Your Email</label>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="Required Email" ControlToValidate="emailcheck" Display="Dynamic" ValidationGroup="g1"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="Red" ErrorMessage="RegularExpressionValidator" ControlToValidate="emailcheck" ValidationGroup="g1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                  
                </div>

                <div class="form-outline mb-4">
                    <asp:TextBox ID="pass1" type="password" runat="server" class="form-control form-control-lg"></asp:TextBox>
                                      <label class="form-label" for="form3Example4cg">Password</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ErrorMessage="inter a valid password" ControlToValidate="pass1" ValidationGroup="g1"></asp:RequiredFieldValidator>
                </div>

                <div class="form-outline mb-4">
                    <asp:TextBox ID="pass2" type="password" runat="server" class="form-control form-control-lg"></asp:TextBox>
                     <label class="form-label" for="form3Example4cdg">Repeat your password</label>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red" ErrorMessage="password req" ControlToValidate="pass2" ValidationGroup="g1"></asp:RequiredFieldValidator>
                   <asp:CompareValidator ID="CompareValidator1" runat="server" ForeColor="Red" ErrorMessage="password dosent match" ControlToCompare="pass1" Operator="Equal" ValidationGroup="g1" ControlToValidate="pass2"></asp:CompareValidator>

                 
                </div>

               

                <div class="d-flex justify-content-center">
                 <asp:Button ID="Button3" runat="server" Text="Register"  class="btn btn-success btn-block btn-lg gradient-custom-4 text-body" ValidationGroup="g1" OnClick="Button3_Click" /> 
                    <asp:Button ID="Button4" runat="server" Text="Clear"  class="btn btn-success btn-block btn-lg gradient-custom-4 text-body" CausesValidation="false" OnClick="Button4_Click" UseSubmitBehavior="False" />
                </div>


                <p class="text-center text-muted mt-5 mb-0">Have already an account?  <a href="#!"
                    class="fw-bold text-body" runat="server"><u>Login here</u></a></p>
                    

               


            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

       <br /> <br /> <br /> 



       <section class="vh-100" style="background-color: #9A616D;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/img1.webp"
                alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">

               

                  <div class="d-flex align-items-center mb-3 pb-1">
                    <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                    <span class="h1 fw-bold mb-0">Logo</span>
                  </div>

                  <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>




                  <div class="form-outline mb-4">
                      <asp:TextBox  ID="emailtwo" class="form-control form-control-lg" type="email" runat="server"></asp:TextBox>
                      <label class="form-label" for="form2Example17">Email address</label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red" ErrorMessage="inter a valid email" ControlToValidate="emailtwo" ValidationGroup="g2" ></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ForeColor="Red" runat="server" ErrorMessage="RegularExpressionValidator" ViewStateMode="Inherit" ValidationGroup="g2" ControlToValidate="emailtwo" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    
                  </div>

                  <div class="form-outline mb-4">
                    
                      <asp:TextBox ID="passbox2" class="form-control form-control-lg" type="password" runat="server"></asp:TextBox>
                      <label class="form-label" for="form2Example27">Password</label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red" ErrorMessage="Required password" ControlToValidate="passbox2" ValidationGroup="g2"></asp:RequiredFieldValidator>
                    
                  </div>

                  <div class="pt-1 mb-4">
                     
                     
                  <asp:Button ID="Button1"  class="btn btn-dark btn-lg btn-block"   ValidationGroup="g2" runat="server" Text="Login" OnClick="Button1_Click" />
                      <asp:Button ID="Button2" runat="server" Text="clear"  class="btn btn-dark btn-lg btn-block" OnClick="Button2_Click" CausesValidation="False" />
                  </div>

               
               

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</asp:Content>
