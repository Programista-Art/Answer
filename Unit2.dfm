object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'O programie'
  ClientHeight = 186
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 480
    Height = 186
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 298
    object TabSheet1: TTabSheet
      Caption = 'O programie'
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 472
        Height = 158
        Align = alClient
        Alignment = taCenter
        Lines.Strings = (
          'Program Answer V.1.0.1 (25.03.2023)'
          'Stworzony przez Dymitra Wygowskiego'
          '(Dmitriy Vygovskiy)'
          #346'rodowisko Delphi 10.4'
          'Poland'
          'Kontakt'
          'E-mail: programista.art@gmail.com')
        ReadOnly = True
        TabOrder = 0
        ExplicitHeight = 270
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Licencja'
      ImageIndex = 1
      object Memo2: TMemo
        Left = 0
        Top = 0
        Width = 472
        Height = 158
        Align = alClient
        Lines.Strings = (
          
            'This program is free software: you can redistribute it and/or mo' +
            'dify'
          
            'it under the terms of the GNU General Public License as publishe' +
            'd by'
          
            'the Free Software Foundation, either version 3 of the License, o' +
            'r'
          '(at your option) any later version.'
          ''
          'This program is distributed in the hope that it will be useful,'
          'but WITHOUT ANY WARRANTY; without even the implied warranty of'
          'MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the'
          'GNU General Public License for more details.'
          ''
          
            'You should have received a copy of the GNU General Public Licens' +
            'e'
          'along with this program.  '
          'If not, see https://www.gnu.org/licenses/gpl-3.0.txt ')
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
        ExplicitHeight = 270
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Ustawienia'
      ImageIndex = 2
      object Panel1: TPanel
        Left = 264
        Top = 0
        Width = 208
        Height = 158
        Align = alRight
        Color = clMedGray
        ParentBackground = False
        TabOrder = 0
        ExplicitHeight = 270
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 28
          Height = 13
          Caption = 'Zmie'#324
        end
        object Label2: TLabel
          Left = 16
          Top = 43
          Width = 28
          Height = 13
          Caption = 'Zmie'#324
        end
        object Label3: TLabel
          Left = 16
          Top = 70
          Width = 28
          Height = 13
          Caption = 'Zmie'#324
        end
        object SpeedButton1: TSpeedButton
          Left = 175
          Top = 12
          Width = 23
          Height = 22
          ImageIndex = 9
          Images = Form1.ImageList1
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 175
          Top = 39
          Width = 23
          Height = 22
          ImageIndex = 9
          Images = Form1.ImageList1
          OnClick = SpeedButton2Click
        end
        object SpeedButton3: TSpeedButton
          Left = 175
          Top = 66
          Width = 23
          Height = 22
          ImageIndex = 9
          Images = Form1.ImageList1
          OnClick = SpeedButton3Click
        end
        object Edit1: TEdit
          Left = 56
          Top = 13
          Width = 113
          Height = 21
          TabOrder = 0
          TextHint = 'Wszystkie'
        end
        object Edit2: TEdit
          Left = 56
          Top = 40
          Width = 113
          Height = 21
          TabOrder = 1
          TextHint = 'Pozytywna'
        end
        object Edit3: TEdit
          Left = 56
          Top = 67
          Width = 113
          Height = 21
          TabOrder = 2
          TextHint = 'Odmowa'
        end
        object Button1: TButton
          Left = 56
          Top = 94
          Width = 113
          Height = 25
          Hint = 'Zapisz ustawienia'
          Caption = 'zapisz'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 55
          Top = 125
          Width = 111
          Height = 25
          Caption = 'Reset ustawie'#324
          TabOrder = 4
          OnClick = Button2Click
        end
      end
    end
  end
end
