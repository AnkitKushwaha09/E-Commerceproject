<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin-enquiry.aspx.cs" Inherits="Admin_enquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <div class="content-body">
    <div class="page-titles">
				<ol class="breadcrumb">
					<li><h5 class="bc-title"> User Enquiry</h5></li>
                    </ol>
			</div>
                     <div class="container-fluid">
                          <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Enquiry</h4>
                            </div>
                            <div class="table-responsive">
                          <table class="table align-middle">
                            <thead>
                              <tr>
                      <th scope="col">#</th>
                      <th scope="col">EMAIL</th>
                      <th scope="col">NAME</th>
                      <th scope="col">MESSAGE</th>
                      <th scope="col">DATETIME</th>
                      <th scope="col">ACTION</th>
                              </tr>
                            </thead>
                            <tbody>
                      <asp:Repeater ID="Repeater1" runat="server">
                             <ItemTemplate>
                              <tr>
                                 <th scope="row"><%# Eval("id")%></th>
                                 <td><%# Eval("email")%></td>
                                 <td><%# Eval("name")%></td>
                            


                                 <td><%# Eval("message")%></td>
                                  </div>
                                 <td><%# Eval("dt")%></td>
                                 <td>
                                     <a href="deletenews.aspx?id=<%# Eval("id")%>" class="btn btn-danger">DELETE</a>
                                 </td>
                              </tr>
                                 </ItemTemplate>
                                        </asp:Repeater>
                            </tbody>
                          </table>
                        </div>
                         </div>
                    </div>
                </div>
           </div>

</asp:Content>

