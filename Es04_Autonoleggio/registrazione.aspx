<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="registrazione.aspx.cs" Inherits="Es04_Autonoleggio.registrazione" UnobtrusiveValidationMode="None" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ctpHead" runat="server">
    <script type="text/javascript">
        function textValidation(source, arguments) {
            if (arguments.Value.length >= 2)
                arguments.IsValid = true;
            else
                arguments.IsValid = false;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ctpBody" runat="server">
    <div class="form-signin">
        <h2 class="form-signin-heading">Form registrazione</h2>
        <asp:Label ID="lblCognome" runat="server" Text="Cognome:"></asp:Label>
        <asp:TextBox ID="txtCognome" runat="server" CssClass="form-control" placeholder="Cognome"></asp:TextBox>
        <asp:CustomValidator ID="custValCognome"
            runat="server" ErrorMessage="Cognome non valido"
            ControlToValidate="txtCognome" Display="Dynamic"
            OnServerValidate="CustValTextValidation_ServerValidate"
            ClientValidationFunction="textValidation"
            ForeColor="Red" ValidateEmptyText="True">
        </asp:CustomValidator>
        <br />
        <asp:Label ID="lblNome" runat="server" Text="Nome:"></asp:Label>
        <asp:TextBox ID="txtNome" runat="server" CssClass="form-control" placeholder="Nome"></asp:TextBox>
        <asp:CustomValidator ID="CustValNome" runat="server" ErrorMessage="Nome non valido" ControlToValidate="txtNome" Display="Dynamic" OnServerValidate="CustValTextValidation_ServerValidate" ClientValidationFunction="textValidation" ForeColor="Red" ValidateEmptyText="True"></asp:CustomValidator>
        <br />
        <asp:Label ID="lblDataNascita" runat="server" Text="Data di nascita:"></asp:Label>
        <asp:TextBox ID="txtDataNascita" runat="server" CssClass="form-control" placeholder="Data di nascita" TextMode="Date"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="Città:"></asp:Label>
        <asp:CustomValidator ID="CustValDataNascita" runat="server" ErrorMessage="Data Nascita non valida" ControlToValidate="txtDataNascita" Display="Dynamic" OnServerValidate="CustValDataNascita_ServerValidate" ForeColor="Red" ValidateEmptyText="True"></asp:CustomValidator>
        <br />
        <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorMail"
            runat="server" ErrorMessage="Email obbligatoria" 
            ControlToValidate="txtEmail" Display="Dynamic" 
            ForeColor="Red">
        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorMail" 
            runat="server" ErrorMessage="Email non valida" 
            ControlToValidate="txtEmail" ForeColor="Red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            Display="Dynamic">
        </asp:RegularExpressionValidator>
        <asp:CustomValidator ID="CustValMail" runat="server" 
            ErrorMessage="Email non valida" ControlToValidate="txtEmail" 
            Display="Dynamic" OnServerValidate="CustValMail_ServerValidate" 
            ForeColor="Red">
        </asp:CustomValidator>
        <br />
        <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPWD" runat="server" ErrorMessage="Password obbligatoria" ControlToValidate="txtPassword" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblConfPwd" runat="server" Text="Conferma password:"></asp:Label>
        <asp:TextBox ID="txtConfermaPassword" runat="server" CssClass="form-control" placeholder="Conferma Password" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorConPWD" runat="server" ErrorMessage="Password obbligatoria" ControlToValidate="txtConfermaPassword" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ErrorMessage="La password non coincidono" 
            ControlToCompare="txtPassword" 
            ControlToValidate="txtConfermaPassword" 
            Display="Dynamic" ForeColor="Red">
        </asp:CompareValidator>

        <br />
        <br />
        <asp:Button ID="btnRegistrati" runat="server" Text="Registrati" 
            CssClass="btn btn-lg btn-primary btn-block" 
            OnClick="btnRegistrati_Click" />
        <br />
        <asp:Label ID="lblErrore" ForeColor="Red" 
            runat="server" Text="">
        </asp:Label>
        <asp:Label ID="lblMessaggio" ForeColor="Green" 
            runat="server" Text="">
        </asp:Label>


        <%--<br />
        
        
        <asp:Label ID="lblRegioni" runat="server" Text="Regioni"></asp:Label>
        <asp:DropDownList ID="cmbRegioni" runat="server" CssClass="form-control" OnSelectedIndexChanged="cmbRegioni_SelectedIndexChanged"></asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="lblProvince" runat="server" Text="Province"></asp:Label>
        <asp:DropDownList ID="cmbProvince" runat="server" CssClass="form-control" OnSelectedIndexChanged="cmbProvince_SelectedIndexChanged"></asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="lblComuni" runat="server" Text="Comuni"></asp:Label>
        <asp:DropDownList ID="cmbComuni" runat="server" CssClass="form-control"></asp:DropDownList>
        
        --%>
    </div>
</asp:Content>
