<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="NewspaperAsp.Net.WebForm2" %>
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
                 
               
            <table id="example2" class="table table-bordered table-hover">
                <thead>
                <tr>
                <th>Id</th>
                <th>Customer Name</th>
                <th>Contact</th>
                <th>Address</th>
                <th>Amount Due</th>
                <th>Last Payment Date</th>
                <th>Last Paid Amount</th>
                <th>Action</th>
                </tr>
                </thead>
                <tbody>
                 
               
                  
                <tr>
                    <td>1</td>
                <td>Kratika Gupta</td>
                <td>7583821040</td>
                <td>Greater Noida</td>
                <td>100</td>
                <td>01-01-2020</td>
                <td>500</td>
                <td><button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#myModal">Pay</button></td>
                </tr>

                <tr>
                    <td>2</td>
                <td>Amit Gupta</td>
                <td>7583821050</td>
                <td>Mumbai</td>
                <td>100</td>
                <td>01-01-2020</td>
                <td>500</td>
                <td><button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#myModal">Pay</button></td>
                </tr>
                </tbody>
            </table>

                   
                <!-- Modal -->
            <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog  modal-sm">

                <!-- Modal content-->
                <div class="modal-content">
                      
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="amtDue">Amount Due:</label>
                            <input type="text" class="form-control" id="amtDue">

                            <label for="Date">Today Date:</label>
                            <input type="date" class="form-control" id="todayDate" >

                            <label for="AmtPay">Amount Pay:</label>
                            <input type="text" class="form-control" id="amtPay">
                        </div>
                    </div>
                    <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
