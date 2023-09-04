/// <summary>
/// ControlAddIn "CUK HTML AddIn."
/// </summary>
controladdin "CUK HTML AddIn"
{
    RequestedHeight = 380;
    RequestedWidth = 480;
    HorizontalStretch = true;
    VerticalStretch = true;
    Scripts = 'src\controladdin\CUKHTMLAddin\main.js';
    StartupScript = 'src\controladdin\CUKHTMLAddin\startup.js';
    StyleSheets = 'src\controladdin\CUKHTMLAddin\skin.css';
    /// <summary>
    /// EmbedHTML.
    /// </summary>
    /// <param name="TitleText">Text.</param>
    /// <param name="HtmlText">Text.</param>
    procedure EmbedHTML(TitleText: Text; HtmlText: Text);
    /// <summary>
    /// SaveTxtBoxContent.
    /// </summary>
    procedure SaveTxtBoxContent();

    /// <summary>
    /// ControlAddInReady.
    /// </summary>
    event ControlAddInReady();

    /// <summary>
    /// SaveTxtBoxContentEvent.
    /// </summary>
    /// <param name="txtVal">Text.</param>
    event SaveTxtBoxContentEvent(txtVal: Text);
}