<%@ Page Async="true" Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="SecureCryptApp.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>
    <!-- Bootstrap core CSS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="assets/js/fontawesome.js"></script>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="vendor/toastr/toastr.min.css" rel="stylesheet" />
    <link href="assets/css/profile.css" rel="stylesheet" />
</head>

<body class="dark-mode">
    <form id="form1" runat="server">
        <div class="container-fluid py-5">
            <div class="row">
                <div class="col-md-6">
                    <!-- Profile Section -->
                    <div class="profile-section mb-4 justify-content-center">
                        <h2><%=user %></h2>
                        <h6>API KEY: <strong id="apikey"><%=apikey %></strong> <i class="far fa-copy copy-icon" onclick="copyToClipboard('apikey')"></i></h6>
                        <br>
                        <asp:Button ID="Logout" runat="server" Text="logout" CssClass="btn btn-danger" OnClick="Logout_Click" />
                        <a href="#" data-toggle="modal" data-target="#Historymodal" class="btn btn-primary">History</a>
                    </div>

                    <div class="container">
                        <h1 class="text-warning mb-4">Steps :</h1>
                        <div class="row mb-4">
                            <div class="col">
                                <p><strong>1. Enter Input Text:</strong> Begin by entering the text you want to encrypt or decrypt into the input field provided.</p>
                                <p><strong>2. Select Custom Private Key:</strong> Choose "Yes" or "No" depending on whether you want to use a custom private key for encryption or decryption.</p>
                                <ul>
                                    <li>If you select "Yes", an additional input field for entering the custom private key will be displayed.</li>
                                    <li>If you select "No", the encryption or decryption process will use the default key.</li>
                                </ul>
                                <p><strong>3. Select Encryption or Decryption Mode:</strong> Choose the mode of operation (encrypt or decrypt) from the dropdown menu provided.</p>
                                <p><strong>4. Submit</strong></p>
                                <p><strong>5. View Output Text:</strong> After submitting, you will receive the output text, which will be either the encrypted or decrypted version of the input text, depending on the mode of operation selected.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <!-- Encryption/Decryption Section -->
                    <div class="encryption-section">
                        <h3>Encryption/Decryption</h3>

                        <div class="form-group">
                            <asp:TextBox runat="server" ID="Input" CssClass="form-control" TextMode="MultiLine" placeholder="Input Text" Height="200px"></asp:TextBox>
                        </div>
                        <br />
                        <div class="form-group">
                            <label for="use-private-key">Do you want to use your own private key?</label>
                            <div class="row">
                                <div class="col-auto">
                                    <div class="form-check form-check-inline">
                                        <asp:RadioButtonList ID="Qpkey" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="Qpkey_SelectedIndexChanged" AutoPostBack="true">
                                            <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                            <asp:ListItem Text="No" Value="No" Selected="True"></asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group" id="pkey_group" runat="server" visible="false">
                            <div class="row">
                                <label for="pkey" class="col-auto col-form-label mr-2">Private key :</label>
                                <div class="col-auto">
                                    <asp:TextBox ID="privatekey" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col">
                                <asp:DropDownList ID="Mode" runat="server" CssClass="form-control bg-dark text-white">
                                    <asp:ListItem>Encrypt</asp:ListItem>
                                    <asp:ListItem>Decrypt</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col">
                                <asp:Button ID="Submit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="Submit_Click" />
                            </div>
                        </div>
                        <br>
                        <div class="form-group">
                            <asp:TextBox runat="server" ID="Output" CssClass="form-control" TextMode="MultiLine" placeholder="Output Text" Height="200px"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!--History Modal-->
        <div class="modal" id="Historymodal" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content dark-mode">
                    <div class="modal-body">
                        <section class="meetings-page" id="history_modal">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <h1>History</h1>
                                        <div class="row">
                                            <div class="row justify-content-center">
                                                <asp:Label runat="server" ID="count" Visible="false" Style="text-align: center;"></asp:Label>
                                                <asp:Repeater ID="GridRepeat" runat="server">
                                                    <HeaderTemplate>
                                                        <table class="table table-bordered">
                                                            <thead>
                                                                <tr>
                                                                    <th scope="col">S.no</th>
                                                                    <th scope="col">Input Text</th>
                                                                    <th scope="col">Output Text</th>
                                                                    <th scope="col">Private Key</th>
                                                                    <th scope="col">Mode</th>
                                                                </tr>
                                                            </thead>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <tbody>
                                                            <tr>
                                                                <th scope="row"><%# Eval("sno") %> </th>
                                                                <td><%# Eval("PlainText") %></td>
                                                                <td><%# Eval("EncryptRDecryptText") %></td>
                                                                <td><%# Eval("privatekey") %></td>
                                                                <td><%# Eval("Mode") %></td>
                                                            </tr>
                                                        </tbody>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </table>
                                                    </FooterTemplate>
                                                </asp:Repeater>
                                            </div>
                                            <div class="d-flex justify-content-center align-items-center">
                                                <a href="#" data-dismiss="modal" class="btn btn-dark text-white">Close</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="vendor/toastr/toastr.min.js"></script>
<script src="assets/js/toaster.js"></script>
<script src="assets/js/valid.js"></script>
<script>
    function copyToClipboard(elementId) {
        var text = document.getElementById(elementId).innerText;

        var textarea = document.createElement("textarea");
        textarea.value = text;
        document.body.appendChild(textarea);
        textarea.select();
        document.execCommand("copy");
        document.body.removeChild(textarea);

        AlertMessage('success', 'API Key copied', true);
    }
</script>
</html>
