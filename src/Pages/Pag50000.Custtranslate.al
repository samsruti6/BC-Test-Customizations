page 50000 "Cust translate"
{
    ApplicationArea = All;
    Caption = 'Cust translate';
    PageType = List;
    SourceTable = "Cust Translate";
    UsageCategory = Administration;
    DataCaptionFields = "Language Code";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Language Code"; Rec."Language Code")
                {
                    ToolTip = 'Specifies the value of the Language Code field.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                }

            }
        }
    }
}
