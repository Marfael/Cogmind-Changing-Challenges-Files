Const ForReading = 1
Const ForWriting = 2

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.OpenTextFile(replacethis, ForReading)

strText = objFile.ReadAll
objFile.Close
strText = Replace(strText, "challengeFragileParts=0", "challengeFragileParts=1")

Set objFile = objFSO.OpenTextFile(replacethis, ForWriting)
objFile.WriteLine strText

objFile.Close
WScript.Echo "Challenge Fragile Part has been activated!"