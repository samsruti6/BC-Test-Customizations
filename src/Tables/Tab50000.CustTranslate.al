table 50000 "Cust Translate"
{
    Caption = 'Cust Translate';
    DataClassification = ToBeClassified;
    DataCaptionFields = "Language Code", Description;
    LookupPageId = "Cust translate";
    DrillDownPageId = "Cust translate";

    fields
    {
        field(1; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            DataClassification = ToBeClassified;
            NotBlank = true;
            TableRelation = Customer;
        }
        field(2; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            DataClassification = ToBeClassified;
            NotBlank = true;
            TableRelation = Language;
        }
        field(3; Description; Text[10])
        {
            Caption = 'Description';


            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Customer No.", "Language Code")
        {
            Clustered = true;
        }
    }
}
