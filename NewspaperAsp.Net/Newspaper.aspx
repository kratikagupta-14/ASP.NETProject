<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Newspaper.aspx.cs" Inherits="NewspaperAsp.Net.WebForm5" %>
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
                <td><button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#myModal">Add Newspaper/Magazine</button></td></br></br>
                        

               </div>
                <table id="example2" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>Name</th>
                    <th>Category</th>
                    <th>Price</th>
                     <th>Action</th>
                  </tr>
                  </thead>
                  <tbody>
                 
  
                  <tr>
                    <td>Times Of India</td>
                    <td>Newspaper </td>
                    <td>200</td>
                    <td>
                        <ul class="list-inline m-0">
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
             <h4 class="modal-title">Add new Category</h4>
           </div>
               <div class="modal-body">
                  <div class="form-group">
                    <label for="usr"> Name:</label>
                    <input type="text" class="form-control" id="usr" placeholder="Enter newspaper/magazine name">

                       <label for="usr"> Category:</label>
                   <select class="browser-default custom-select">
                        <option selected>choose category</option>
                        <option value="1">Newspaper</option>
                        <option value="2">Magazine</option>
                  </select>

                     <label for="usr">Price:</label>
                     <input type="text" class="form-control" id="usr"  placeholder="Enter price of category">

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
