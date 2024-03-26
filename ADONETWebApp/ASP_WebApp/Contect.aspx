<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contect.aspx.cs" Inherits="ASP_WebApp.Contect" MasterPageFile="~/MainLayout.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContents">
    <form id="form1" runat="server">
        <div class="col-lg-6 col-md-8 col-sm-10 px-0">
            <div class="contact-form bg-white rounded p-5">
                <div id="success"></div>
                <div name="sentMessage" id="contactForm" novalidate="novalidate">
                    <div class="form-row" style="display:flex">
                        <div class="col-md-6">
                            <div class="control-group">
                                <input type="text" class="form-control bg-light border-0 p-4" id="name" placeholder="Your Name" required="required" data-validation-required-message="Please enter your name">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="control-group">
                                <input type="email" class="form-control bg-light border-0 p-4" id="email" placeholder="Your Email" required="required" data-validation-required-message="Please enter your email">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                    </div>
                    <div class="control-group">
                        <input type="text" class="form-control bg-light border-0 p-4" id="subject" placeholder="Subject" required="required" data-validation-required-message="Please enter a subject">
                        <p class="help-block text-danger"></p>
                    </div>
                    <div class="control-group">
                        <textarea class="form-control bg-light border-0 py-3 px-4" rows="5" id="message" placeholder="Message" required="required" data-validation-required-message="Please enter your message"></textarea>
                        <p class="help-block text-danger"></p>
                    </div>
                    <div class="text-center">
                        <button class="btn btn-primary text-uppercase py-3 px-5" type="submit" id="sendMessageButton">Send Message</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
    </asp:Content>
