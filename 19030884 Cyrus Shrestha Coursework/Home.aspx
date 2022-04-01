<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="_19030884_Cyrus_Shrestha_Coursework.Home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> WELCOME TO THE BERKELEY COLLEGE</h1>
     <div class="container-fluid px-4" >
                <div class="row g-3 my-2">
                     <a href="Student.aspx" class="col-md-3 bg-transparent text-success">
                        
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3  class="fs-2">10</h3>
                                <p class="fs-5">Students</p>
                            </div>
                            <i class="fas fa-user fs-1 primary-text border rounded-full secondary-bg p-3"></i>
                        </div>
                   
                     </a>
                    <a href="Teacher.aspx" class="col-md-3 bg-transparent text-success">
                        
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2">6</h3>
                                <p class="fs-5">Teacher</p>
                            </div>
                            <i
                                class="fas fa-sign fs-1 primary-text border rounded-full secondary-bg p-3"></i>
                        </div>
                    
                     </a>
                    <a href="Module.aspx" class="col-md-3 bg-transparent text-success">
                       
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2">12
                                </h3>
                                <p class="fs-5">Modules</p>
                            </div>
                            <i class="fas fa-book fs-1 primary-text border rounded-full secondary-bg p-3"></i>
                        </div>
                 

                     </a>
                    <a href="Department.aspx" class="col-md-3 bg-transparent text-success">
                        
                        <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2">3</h3>
                                <p class="fs-5">Department</p>
                            </div>
                            <i class="fas fa-school fs-1 primary-text border rounded-full secondary-bg p-3"></i>
                        </div>
                    
                     </a>

                    

                
                    
                </div>
         </div>
</asp:Content>
