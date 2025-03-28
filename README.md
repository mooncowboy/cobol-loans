# cobol-loans
Simple app in COBOL to use in modernization demos with GitHub Copilot. This is a very small sample and not intended for production use.

# Requirements
- GitHub Copilot agent mode (as of Mar 28 2025, it's available in Visual Studio Code Insiders).

# How to run
There's two ways of running this:
- Codespaces: open the project in GitHub Codespaces
- Local: clone the project and open it in Visual Studio Code. Then reopen in devcontainer.

# Steps
1. Open the project in GitHub Codespaces or clone it and open it in Visual Studio Code.
2. Compile and run the COBOL program: `make`
3. Open GitHub Copilot, switch to agent mode and type the following prompt: 
   ```
   Convert the loan.cob cobol program to .net 9. Create the .net required files in the newversion folder
   ```
4. Switch to the `newversion` folder and run the .net program: `dotnet run`


