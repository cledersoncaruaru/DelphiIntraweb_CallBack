unit uFrmDashBoard;
interface
uses

  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBase, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompButton, IWCompLabel, IWCanvas, IWChartJS;
type
  TFrmDashBoard = class(TFrmBase)
    VENDAS: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
    procedure TPSUnknownTag(const AName: string; var VValue: string);

  private
    { Private declarations }

    procedure Meu_CallBack(EventParams: TStringList);

    Function TotalVendas:Currency;

  public
    { Public declarations }
  end;
var
  FrmDashBoard: TFrmDashBoard;
implementation
{$R *.dfm}



procedure TFrmDashBoard.IWAppFormCreate(Sender: TObject);
begin
  inherited;

  VENDAS.Text      := FormatFloat('R$ #,##0.000',0);

  RegisterCallBack('nomequedeidocallback',Meu_CallBack);



end;

procedure TFrmDashBoard.Meu_CallBack(EventParams: TStringList);
begin


   if (EventParams.Values['meucallback']) = 'tag_que_eu_quero' then begin


       VENDAS.Text      := FormatFloat('R$ #,##0.000',TotalVendas);



   end;


end;

function TFrmDashBoard.TotalVendas: Currency;
begin


 Sleep(9000);


 Result := 9.800;



end;

procedure TFrmDashBoard.TPSUnknownTag(const AName: string; var VValue: string);
begin
  inherited;


   if AName = 'TOTAL_CLIENTES' then
   begin

      Sleep(5000);
      VValue  :=  FormatFloat('R$ #,##0.000',5800);

   end;





end;

end.
