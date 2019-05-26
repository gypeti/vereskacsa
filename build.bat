call "c:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat"
echo "Hello."
msbuild /p:Configuration=Debug /p:Platform="Any CPU" c:\work\project\InvoiceMe.sln

