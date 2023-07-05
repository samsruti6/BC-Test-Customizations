pageextension 50001 CustomerExtCard extends "Customer Card"
{
    layout
    {
        addafter(Name)
        {
            field(NameTranslated; Rec."Name (Translated) SG")
            {
                ApplicationArea = All;

            }
        }
    }
    actions
    {
        addafter(NewReminder)
        {
            action(translationsSG)
            {
                ApplicationArea = All;
                Caption = 'Translations SG';
                Image = Translations;
                Promoted = true;
                PromotedCategory = Category4;
                PromotedOnly = true;
                RunObject = page "Cust translate";
                RunPageLink = "Customer No." = field("No.");
            }
        }
    }
    trigger OnOpenPage()
    var
        Language: Codeunit Language;
    begin
        Rec.SetFilter("Language filter SG", Language.GetUserLanguageCode());
    end;
}

