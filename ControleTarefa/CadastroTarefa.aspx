<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroTarefa.aspx.cs" Inherits="ControleTarefa.CadastroTarefa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="lib/css/bootstrap-datepicker.min.css" rel="stylesheet" />
    <link href="lib/css/bootstrap.min.css" rel="stylesheet" />
    <script src="lib/js/jquery.js"></script>
    <script src="lib/js/bootstrap-datepicker.min.js"></script>
    <script src="lib/locales/bootstrap-datepicker.pt-BR.min.js"></script>
    <script src="lib/js/bootstrap.min.js"></script>
    <script src="lib/locales/bootstrap-datepicker.pt-BR.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="LabelDescricao" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="Descricao" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="LabelDataAtividade" runat="server" Text="Data Atividade"></asp:Label>
            <asp:TextBox ID="DataAtividade" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="LabelDataEntrega" runat="server" Text="DataEntrega"></asp:Label>
            <asp:TextBox ID="DataEntrega" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="LabelDataLimiteEntrega" runat="server" Text="DataLimiteEntrega"></asp:Label>
            <asp:TextBox ID="DataLimiteEntrega" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="LabelDiagnostico" runat="server" Text="Diagnostico"></asp:Label>
            <asp:TextBox ID="Diagnostico" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>
    </form>

    <script>
        $(function () {
            $('#DataAtividade').datepicker({
                locale: 'pt-BR',
                autoclose: true
            });
            $('#DataEntrega').datepicker({
                locale: 'pt-BR',
                autoclose: true
            });
            $('#DataLimiteEntrega').datepicker({
                locale: 'pt-BR',
                autoclose: true
            });
        });
    </script>
</body>
</html>
