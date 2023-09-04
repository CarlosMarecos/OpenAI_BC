"use strict"

function initializeControlAddIn(id) {
    var controlAddIn = document.getElementById(id);

    controlAddIn.innerHTML =
        `<div id="AddinWrapper">            
            <div id="EmbeddedContent"></div>
        </div>`;
    pageLoaded();

    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('ControlAddInReady', null);
}

function pageLoaded() {
    console.log('addin ready');
}

function EmbedHTML(titleText, htmlText) {
    document.getElementById("EmbeddedContent").innerHTML = `
        <h3>${titleText}</h3>
        <textarea style="margin: auto; width:98%" rows="20" id="myTextBox" onchange="SaveTxtBoxContent();">${htmlText}</textarea>`;
}

function SaveTxtBoxContent() {
    var txtVal = document.getElementById("myTextBox").value;
    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('SaveTxtBoxContentEvent', [txtVal]);
}