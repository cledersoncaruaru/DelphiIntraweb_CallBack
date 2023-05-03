unit uBase;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML,System.StrUtils, Vcl.Controls, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton, IWCompLabel;

type
  TFrmBase = class(TIWAppForm)
    TPS: TIWTemplateProcessorHTML;
    BTN_POST: TIWButton;
    BTN_CANCEL: TIWButton;
    procedure IWAppFormCreate(Sender: TObject);
  public

  Procedure Menu(EventParams: TStringList);


  end;

implementation

{$R *.dfm}

uses uFrmDashBoard, uFrmLogin;


procedure TFrmBase.IWAppFormCreate(Sender: TObject);
begin

   RegisterCallBack('Menu',Menu);



  if self.Name = 'FrmLogin' then begin

     TPS.Templates.Default := '/FrmLogin.html';

  end else begin

    TPS.MasterTemplate          := '/master.html';
     TPS.Templates.Default       := '/'+self.Name+'.html';

  end;




end;


procedure TFrmBase.Menu(EventParams: TStringList);
var
 vFormname, Page : string;
begin


  Page  := EventParams.Values['page'];


  case AnsiIndexStr(Page,['login','dashboard']) of

   0 : vFormname := 'FRMLOGIN';
   1 : vFormname := 'FRMDASHBOARD';




  end;


   if (UpperCase(WebApplication.ActiveForm.Name) = vFormname) then
   exit;

   self.Release;



    case AnsiIndexStr(Page,['login','dashboard']) of



     0 : begin

         WebApplication.ShowForm(TFrmLogin,True);

         end;

     1 : begin

         WebApplication.ShowForm(TFrmDashBoard,True);

         end;





    end;




end;

end.
