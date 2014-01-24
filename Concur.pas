unit Concur;
(* Author:      EtherniDee aka Berserker
   Desctiption: Support for concurrency *)

interface
uses Windows;

type
  TCritSection = record
   private
    fCritSection: Windows.TRTLCriticalSection;

   public
    procedure Init; inline;
    procedure Enter; inline;
    procedure Leave; inline;
  end; // .record TCritSection


implementation

procedure TCritSection.Init;
begin
  Windows.InitializeCriticalSection(fCritSection);
end; // .procedure TCritSection.Init

procedure TCritSection.Enter;
begin
  Windows.EnterCriticalSection(fCritSection);
end; // .procedure TCritSection.Enter

procedure TCritSection.Leave;
begin
  Windows.LeaveCriticalSection(fCritSection);
end; // .procedure TCritSection.Leave

end.