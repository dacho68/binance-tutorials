@if (@X)==(@Y) @end /* Harmless hybrid line that begins a JScript comment

::--- Batch section within JScript comment ----------------------------
@echo off

::This block of code handles the TEE by calling the internal JScript code
if "%~1"=="_TEE_" (
  cscript //E:JScript //nologo "%~f0" %2 %3
  exit /b
)

::The rest of your batch script goes here

::This pipes to TEE in append mode
mycommand.exe | "%~f0" _TEE_ output.txt 1

exit /b

----- End of JScript comment, beginning of normal JScript  ------------------*/
var fso = new ActiveXObject("Scripting.FileSystemObject");
var mode=2;
if (WScript.Arguments.Count()==2) {mode=8;}
var out = fso.OpenTextFile(WScript.Arguments(0),mode,true);
var chr;
while( !WScript.StdIn.AtEndOfStream ) {
  chr=WScript.StdIn.Read(1);
  WScript.StdOut.Write(chr);
  out.Write(chr);
}