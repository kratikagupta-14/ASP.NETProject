<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="NewspaperAsp.Net.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                  

     <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
   

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
          
                
              <!-- /.card-header -->
              <div class="card-body">
                
               <div class="card-tools">
                <td><button type="button" id="AddCustomer" class="btn btn-info btn-sm"><a href="AddCustomer.aspx">Add Customer</a></button></td></br></br>
                        
                   </div>
               

               <table ID="customerTable" class="table table-bordered table-hover">
                   <asp:Repeater ID="rpt" runat="server" >
                  <HeaderTemplate>
                  <tr class="Header">
                    <td>Id</td>
                    <td>Customer Name</td>
                    <td>Contact</td>
                    <td>Address</td>
                    <td>Email</td>
                    <td>Locality Assign</td>
                    <td>Action</td>
                  </tr>
                  </HeaderTemplate>
                  <ItemTemplate>
                      <tr>
                        <td>
                        <%# Eval("Id")%>
                        </td>
                        <td>
                        <%# Eval("Customer_Name")%>
                        </td>
                        <td>
                        <%# Eval("Contact")%>
                        </td>
                            <td>
                        <%# Eval("Address")%>
                        </td>
                            <td>
                        <%# Eval("Email")%>
                        </td>
                            <td>
                        <%# Eval("Locality")%>
                        </td>
                          <td class="auto-style1">
                              <ul class="list-inline m-0">
                             <form runat="server">

                               <li class="list-inline-item">
		                             <input type="hidden" ID="editId" value="<%# Eval("Id")%>"> 
		                             <button class="btn btn-success btn-sm rounded-0" type="submit" onClick="editBtn_Click" data-toggle="tooltip" data-placement="top" title="Edit" id="editBtn"><i class="fa fa-edit" dir="rtl"></i></button>
                               
                                </li>
                                <li class="list-inline-item">
			                             <input type="hidden" ID="deleteId" value="<%# Eval("Id")%>">
			                             <button class="btn btn-danger btn-sm rounded-0" type="submit" onClick="deleteBtn_Click" data-toggle="tooltip" data-placement="top" title="Delete" id="deleteBtn"><i class="fa fa-trash"></i></button>
			                        
                                </li></form> 
                              </ul>
                              
                           </td>
                        </tr>
                       <!-- <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>    -->
                    
                 <!--    
                  <tr>
                    <td class="auto-style1">1</td>
                    <td class="auto-style1">Ravindar </td>
                    <td class="auto-style1">982647582</td>
                    <td class="auto-style1">noida</td>
                    <td class="auto-style1">Ravi@gmail.com</td>
                    <td class="auto-style1">bus stand</td>
                    <td class="auto-style1">
                          <ul class="list-inline m-0">
                             
                               <li class="list-inline-item">
                               <button class="btn btn-success btn-sm rounded-0" type="button" data-toggle="tooltip" data-placement="top" title="Edit" id="editBtn"><i class="fa fa-edit" dir="rtl"></i></button>
                               </li>
                               <li class="list-inline-item">
                               <button class="btn btn-danger btn-sm rounded-0" type="button" data-toggle="tooltip" data-placement="top" title="Delete" id="deleteBtn"><i class="fa fa-trash"></i></button>
                               </li>
                           </ul>
                    </td>
                
                  </tr>

                     -->
                </ItemTemplate>
                       </asp:Repeater>
                 
               </table>

                   <!-- Modal -->
       <div id="myModal" class="modal fade" role="dialog">
       <div class="modal-dialog">

                <!-- Modal content-->
       <div class="modal-content">
           <form name="CustomerForm" method="post" runat="server">
               <div class="modal-header">
                 <h4 class="modal-title">Add a new Customer</h4>
               </div>
               <div class="modal-body">
                  <div class="form-group">
                    
                        <asp:Label ID="Label2" runat="server" Text="Label"><b>Customer Name:</b></asp:Label>
                        <asp:TextBox ID="customerNameTb" class="form-control" runat="server" required="true" placeholder="Enter customer name"></asp:TextBox></br>

                        <asp:Label ID="Label1" runat="server" Text="Label"><b>Contact:</b></asp:Label>
                        <asp:TextBox ID="contactTb" class="form-control" runat="server" required="true" placeholder="Enter contact no"></asp:TextBox></br>

                       <asp:Label ID="Label3" runat="server" Text="Label"><b>Email:</b></asp:Label>
                       <asp:TextBox ID="emailTb" class="form-control" runat="server" required="true" placeholder="Enter Email "></asp:TextBox></br>
                  
                        <asp:Label ID="Label4" runat="server" Text="Label"><b>Address:</b></asp:Label>
                       <asp:TextBox ID="addressTb" class="form-control" runat="server" required="true" placeholder="Enter Address "></asp:TextBox></br>

                       <asp:Label ID="Label5" runat="server" Text="Label"><b>Locality:</b></asp:Label>
                       <asp:TextBox ID="localityTb" class="form-control" runat="server" required="true" placeholder="Enter your locality here "></asp:TextBox>

                          <asp:Label ID="LblTxt" runat="server" Text="lbl"><b></b></asp:Label>
                  </div>
              </div>
               <div class="modal-footer">
                 <asp:Button ID="SubmitBtn" runat="server"  class="btn btn-primary" Text="submit" OnClick="SubmitBtn_Click"></asp:Button>
               </div>
           </form>
         </div>

  </div>
 </div>                     



              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->











</asp:Content>
