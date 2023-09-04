/// <summary>
/// PageExtension Acc. Schedule Overview Ext (ID 50100) extends Record Acc. Schedule Overview.
/// </summary>
pageextension 50100 "Acc. Schedule Overview Ext" extends "Acc. Schedule Overview"
{
    layout
    {
        addlast(FactBoxes)
        {
            part(ExplanationTextFactBox; "Explanation Factbox Part")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Explanation Text';
            }
        }
    }

    actions
    {
        addlast("F&unctions")
        {
            action(Suggest)
            {
                ApplicationArea = All;
                Caption = 'Explain';
                Image = SparkleFilled;
                ToolTip = 'Let Azure OpenAI explain the financial report';

                trigger OnAction()
                var
                    ExplanationRichText: Page "Explanation Rich Text";
                begin
                    ExplainFinancialReportImpl.SetOptions(Rec, CurrentColumnName, UseAmtsInAddCurr);
                    ExplainFinancialReportImpl.SuggestExplanation(SuggestedExplanationText);
                    ExplanationRichText.SetExplanationText(SuggestedExplanationText);
                    ExplanationRichText.RunModal();
                end;
            }

        }
    }

    var
        ExplainFinancialReportImpl: Codeunit "Explain Financial Report Impl.";
        SuggestedExplanationText: Text;

}