﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReadySendMessageInfo.aspx.cs"
    Inherits="NoteInfo_ReadySendMessageInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

    <script language="javascript" src="../Js/GridViewSet.js" type="text/javascript"></script>

    <script language="javascript" src="../Js/createHTML.js" type="text/javascript"></script>

    <script language="javascript" src="../Js/drag.js" type="text/javascript"></script>

    <script language="javascript" src="../Js/js_webFormForModel.js" type="text/javascript"></script>

    <script src="../Js/winModel.js" type="text/javascript"></script>

    <script language="javascript" src="../Js/Calendar/WdatePicker.js" type="text/javascript"></script>

</head>
<body onkeydown="if(event.keyCode==13){event.keyCode = 9;event.returnValue = false;}">

    <script language="javascript" type="text/javascript">
        function Refurbish()//执行60一刷新
        {
            window.location = window.location.href; 
        }
        
    </script>

    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div>
                <table cellpadding="0" cellspacing="0" style="width: 100%" border="0">
                    <tr style="display:none">
                        <td style="background-image: url('../Images/gridheadbg.jpg')" align="left">
                            <table border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td style="width: 24px; height: 24px; background-image: url('../Images/headerleft.gif');">
                                    </td>
                                    <td style="width: 100px; height: 24px; background-image: url('../Images/headercenter.gif');
                                        background-repeat: repeat-x">
                                        <span class="header">&nbsp;待发短信监控</span>
                                    </td>
                                    <td style="width: 10px; height: 24px; background-image: url('../Images/headerright.gif');">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-image: url('../Images/searchline.jpg'); height: 3px" colspan="3">
                        </td>
                    </tr>
                    <tr>
                        <td style="background-image: url('../Images/navbg.jpg')" colspan="3" align="left">
                            <table cellpadding="0" cellspacing="0" border="0" width="250px">
                                <tr>
                                    <td style="width: 200px;" align="left">
                                        <div>
                                            <table cellpadding="0" cellspacing="0" border="0" onmouseover="over(this);" onmouseout="out(this);">
                                                <tr>
                                                    <td style="width: 3px; height: 21px;">
                                                    </td>
                                                    <td style="vertical-align: middle; text-align: center; padding: 0 5px; cursor: pointer;
                                                        white-space: nowrap;">
                                                    </td>
                                                    <td style="width: 3px; height: 21px;">
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" style="height: 20px" colspan="3">
                            <asp:GridView ID="gdv_ReadySendMessage" runat="server" DataKeyNames="RSMID" AutoGenerateColumns="False"
                                Width="100%" BorderStyle="None" PageSize="20">
                                <Columns>
                                    <asp:BoundField DataField="MobileNo" HeaderText="短信接收号码">
                                        <ItemStyle Width="100px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="MContent" HeaderText="短信内容" />
                                    <asp:BoundField DataField="SendDate" HeaderText="生成时间">
                                        <ItemStyle Width="110px" />
                                    </asp:BoundField>
                                </Columns>
                                <EmptyDataTemplate>
                                    <div align="center">
                                        <b>无数据...</b></div>
                                </EmptyDataTemplate>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td class="page" colspan="3">
                            &nbsp;
                        </td>
                    </tr>
                </table>
                </td> </tr> </table>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>

<script type="text/javascript" language="javascript">
    // 列表根据时间控制（初定60秒），达到一个周期重新加载一次
    setInterval(Refurbish, 30000); 
     
</script>

</html>
