﻿<%@ Page Language="C#" Inherits="Orchard.Mvc.ViewPage<CommentsEditViewModel>" %>
<%@ Import Namespace="Orchard.Comments.Models"%>
<%@ Import Namespace="Orchard.Comments.ViewModels"%>
<h1><%: Html.TitleForPage(T("Edit Comment").ToString())%></h1>
<% using(Html.BeginFormAntiForgeryPost()) { %>
    <%: Html.ValidationSummary() %>
    <fieldset class="who">
        <div>
            <label for="Name"><%: T("Name") %></label>
            <input id="Name" class="text" name="Name" type="text" value="<%: Model.Name %>" />
        </div>
        <div>
            <label for="Email"><%: T("Email") %></label>
            <input id="Email" class="text" name="Email" type="text" value="<%: Model.Email %>" />				
        </div>
        <div>
            <label for="SiteName"><%: T("Url") %></label>
            <input id="SiteName" class="text" name="SiteName" type="text" value="<%: Model.SiteName %>" />
        </div>
    </fieldset>
    <fieldset class="what">
        <div>
            <label for="CommentText"><%: T("Body") %></label>
            <textarea id="CommentText" rows="10" cols="30" name="CommentText"><%: Model.CommentText %></textarea>
	        <input id="CommentId" name="Id" type="hidden" value="<%=Model.Id %>" />
        </div>
    </fieldset>
    <fieldset>
        <div>
            <%: Html.RadioButton("Status", "Pending", (Model.Status == CommentStatus.Pending), new { id = "Status_Pending" }) %> 
            <label class="forcheckbox" for="Status_Pending"><%: T("Pending") %></label>
        </div>
        <div>
            <%: Html.RadioButton("Status", "Approved", (Model.Status == CommentStatus.Approved), new { id = "Status_Approved" }) %>
            <label class="forcheckbox" for="Status_Approved"><%: T("Approved") %></label>
        </div>
        <div>
            <%: Html.RadioButton("Status", "Spam", (Model.Status == CommentStatus.Spam), new { id = "Status_Spam" }) %> 
            <label class="forcheckbox" for="Status_Spam"><%: T("Mark as spam") %></label>
        </div>
    </fieldset>
    <fieldset>
	    <input type="submit" class="button" value="<%: T("Save") %>" />
    </fieldset>
<% } %>