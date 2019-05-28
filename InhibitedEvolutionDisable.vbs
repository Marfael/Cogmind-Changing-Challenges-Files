Const ForReading = 1
Const ForWriting = 2

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.OpenTextFile(replacethis, ForReading)

strText = objFile.ReadAll
objFile.Close
strText = Replace(strText, "challengeInhibitedEvolution=1", "challengeInhibitedEvolution=0")

Set objFile = objFSO.OpenTextFile(replacethis, ForWriting)
objFile.WriteLine strText

objFile.Close
WScript.Echo "Challenge Inhibited Evolution has been deactivated!"