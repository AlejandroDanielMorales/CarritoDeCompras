﻿
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="CartWeb.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Repeater ID="repeaterItems" runat="server">
    <ItemTemplate>
        <div class="col-12 col-md-6 col-lg-4 mb-2">
            <div class="card" style="border-color: darkgray; height: 100%;">
                <a href="<%# ResolveUrl("~/Detail.aspx?id=" + Eval("Id")) %>">
                    <img src="<%# Eval("Images[0]") %>" class="card-img-top" style="object-fit: scale-down; height: 25vh; width: 100%;" alt="...">
                </a>
                <div class="card-body text-center" style="margin-bottom: 20px;">
                    <center>
                        <p class="card-text" style="font-size: 16px; color: black;"><strong><%#Eval("Brand.Descripcion")%></strong></p>
                        <p class="card-title" style="font-size: 15px;"><%#Eval("Name")%></p>
                        <p class="card-text" style="font-size: 12px;"><%#Eval("Description")%></p>
                        <p class="card-text" style="font-size: 14px;">$ <%#Eval("Price")%></p>
                        <!-- Agrega otros campos aquí utilizando la sintaxis de Eval -->
                    </center>
                </div>
            </div>
        </div>
    </ItemTemplate>
</asp:Repeater>
</asp:Content>
