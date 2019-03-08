%x COMMENT

%%

"/*" { BEGIN COMMENT; }

<COMMENT>.|\n {  }
<COMMENT>"*/" {BEGIN INITIAL; }

"//".*



