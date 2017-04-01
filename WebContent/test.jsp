<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Run html file</title>
  <meta charset="UTF-8" />
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
 

 



 
   


  <style type="text/css">
    body {
      font-size: 15px;
      color: #222;
      line-height: 25px;
      font-family: sans-serif;
    }

    .bkTitle {
      float: left;
      margin-bottom: 10px;
      margin-top: -5px;
    }

    .df,
    .myF_lft,
    .mySubHd {
      float: left
    }

    #myContentHolder {
      background-color: #F1F1F1
    }

    .df {
      min-height: 100px;
      width: 100%
    }

    .myIframecontainer,
    .myTextareacontainer {
      float: left;
      height: 80%;
      width: 50%
    }

    .myIframe,
    .myTextarea {
      height: 100%;
      padding: 15px
    }

    .mySubHd {
      width: 10%;
      height: 30px
    }

    .myF_rgt {
      float: right;
      padding-right: 15px
    }

    #myIframewrapper{
      background-color: #fff;
      box-shadow: 0 1px 3px rgba(0, 0, 0, .12), 0 1px 2px rgba(0, 0, 0, .24);
      float: left;
      height: 470px;
      margin-bottom: 25px;
      width: 100%
    }

    #myTextareaCode {
      background-color: #fff;
      border: none;
      font-family: consolas, "courier new", monospace;
      font-size: 15px;
      height: 100%;
      padding: 8px;
      resize: none;
      width: 100%;
      float: left
    }

    .vkHeader {
      float: left;
      height: 25px;
      margin-bottom: 10px;
      width: 100%
    }

    #iframeResult,
    #iframeSource {
      background-color: #fff;
      height: 100%;
      width: 100%
    }

    .btnRunCode {
      background-color: black;
      border: none;
      border-radius: 2px;
      color: #fff;
      cursor: pointer;
      padding: 10px;
      padding-right: 10px;
      padding-left: 10px;
      transition: background-color .3s ease 0s
    }

    .btnRunCode:hover {
      background-color: grey
    }
  </style>
  <script type='text/javascript' src='https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
</head>

<body  onload="PR.prettyPrint()">
  <div class="entry-content">
    <div id="vkWrapper">
      <div id="myHead" class="df">
        <center>
          <ins class="adsby" style="display:inline-block;width:728px;height:90px"></ins>
        </center>
      </div>
      <div class="df" id="myContentHolder">
        <div class="myTextareacontainer">
          <div class="myTextarea">
            <div class="vkHeader">
              <h4 class="myF_lft">
              <span class="label label-info">Edit This Code :</span></h4>
              <div class="myF_rgt">
                <a class="btn btn-danger btn-rounded waves-effect waves-light" onclick="runCode()" >
                See result</a></div>
              </div>
              <div id="myTextareawrapper">
<!-- begin code -->    
 

			
			<textarea class="code_input" spellcheck="false" id="myTextareaCode" autocomplete="on" class="prettyprint">

                 <p>All HTML documents must start with a document type declaration:&nbsp;<strong>&lt;!DOCTYPE html&gt;</strong>.</p> <p>The HTML document itself begins with&nbsp;<strong>&lt;html&gt;</strong>&nbsp;and ends with&nbsp;<strong>&lt;/html&gt;</strong>.</p> <p>The visible part of the HTML document is between&nbsp;<strong>&lt;body&gt;</strong>&nbsp;and&nbsp;<strong>&lt;/body&gt;</strong>.</p>
             </textarea>
         
<!-- end code -->
              </div>
            </div>
          </div>
          <div class="myIframecontainer">
            <div class="myIframe">
              <div class="vkHeader">
                <div class="myF_lft">
				<h4 class="myF_lft">
              <span class="label label-success">Result :</span></h4>

				</div>
              </div>
              <div id="myIframewrapper">
              </div>
            </div>
          </div>
        </div>
      </div>
      <style type="text/css">
        .td-main-content-wrap .td-container {
          width: 100%!important;
        }
      </style>
      <script type="text/javascript">
        $(document).ready(function() {

        });

        function runCode_1() {

          var text = document.getElementById("myTextareaCode").value;

          var ifr = document.createElement("iframe");
          ifr.setAttribute("frameborder", "0");
          ifr.setAttribute("id", "iframeResult");
          document.getElementById("myIframewrapper").innerHTML = "";
          document.getElementById("myIframewrapper").appendChild(ifr);
          var ifrw = (ifr.contentWindow) ? ifr.contentWindow : (ifr.contentDocument.document) ? ifr.contentDocument.document : ifr.contentDocument;
          ifrw.document.open();
          ifrw.document.write(text);
          ifrw.document.close();
          if (ifrw.document.body && !ifrw.document .body.isContentEditable) {
            ifrw.document.body.contentEditable = true;
            ifrw.document.body.contentEditable = false;
          }
        }
        runCode_1();

        function runCode() {


          var text = document.getElementById("myTextareaCode").value;


          var ifr = document.createElement("iframe");
          ifr.setAttribute("frameborder", "0");
          ifr.setAttribute("id", "iframeResult");
          document.getElementById("myIframewrapper").innerHTML = "";
          document.getElementById("myIframewrapper").appendChild(ifr);
          var ifrw = (ifr.contentWindow) ? ifr.contentWindow : (ifr.contentDocument.document) ? ifr.contentDocument.document : ifr.contentDocument;
          ifrw.document.open();
          ifrw.document.write(text);
          ifrw.document.close();
          if (ifrw.document.body && !ifrw.document.body.isContentEditable) {
            ifrw.document.body.contentEditable = true;
            ifrw.document.body.contentEditable = false;
          }
        }
      </script>
    </p>
  </div>

</body>

</html>