tableextension 50000 CustomerEXT extends Customer
{
    fields
    {
        field(50000; "Name (Translated) SG"; Text[100])
        {
            Caption = 'Name (Translated)';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup("Cust Translate".Description
            where(
                "Customer No." = field("No."),
                "Language Code" = field("Language filter SG")
            )
            );
        }
        field(50001; "Language filter SG"; Code[10])
        {
            Caption = 'Language filter';
            FieldClass = FlowFilter;
        }

    }
    trigger OnAfterDelete()
    var
        Translate: Record "Cust Translate";
    begin
        Translate.SetRange("Customer No.", "No.");
        if not Translate.IsEmpty then
            Translate.DeleteAll();
    end;
}
