<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Hawker.aspx.cs" Inherits="NewspaperAsp.Net.WebForm3" %>
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
                         <td><button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#myModal">Add Hawker</button></td></br></br>
                  
                </div>
                <table id="example2" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>Id</th>
                    <th>Hawker Name</th>
                    <th>Contact</th>
                    <th>Address</th>
                    <th>Locality Assign</th>
                    <th>Action</th>
                    
                  </tr>
                  </thead>
                  <tbody>
                 
  
                  <tr>
                    <td>1</td>
                    <td>Ravindar </td>
                    <td>982647582</td>
                    <td>noida</td>   
                    <td>bus stand</td>
                    <td> <ul class="list-inline m-0">
                                                <li class="list-inline-item">
                                                    <button class="btn btn-primary btn-sm rounded-0" type="button" data-toggle="tooltip" data-placement="top" title="Add"><i class="fa fa-table"></i></button>
                                                </li>
                                                <li class="list-inline-item">
                                                    <button class="btn btn-success btn-sm rounded-0" type="button" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-edit"></i></button>
                                                </li>
                                                <li class="list-inline-item">
                                                    <button class="btn btn-danger btn-sm rounded-0" type="button" data-toggle="tooltip" data-placement="top" title="Delete"><i class="fa fa-trash"></i></button>
                                                </li>
                                            </ul></td>
                
                  </tr>
                  </tbody>
                 
                </table>


                   <!-- Modal -->
       <div id="myModal" class="modal fade" role="dialog">
       <div class="modal-dialog">

                <!-- Modal content-->
       <div class="modal-content">
           <div class="modal-header">
             <h4 class="modal-title">Add a new Hawker</h4>
           </div>
               <div class="modal-body">
                  <div class="form-group">
                    <label for="usr">Hawker Name:</label>
                    <input type="text" class="form-control" id="usr" placeholder="Enter Hawker name">

                    <label for="start">Contact:</label>
                    <input type="text" class="form-control" id="start"  placeholder="Enter Contact No" >

                    <label for="usr">Email:</label>
                    <input type="text" class="form-control" id="usr"  placeholder="Enter your mail id">

                    <label for="usr">Address:</label>
                    <input type="text" class="form-control" id="usr"  placeholder="Enter your address">

                     <label for="usr">Locality Assigned:</label>
                     <input type="text" class="form-control" id="usr"  placeholder="Enter your locality here">

                  </div>
              </div>
                      <div class="modal-footer">
                          <button type="submit" class="btn btn-primary">Add</button>
                      </div>
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
