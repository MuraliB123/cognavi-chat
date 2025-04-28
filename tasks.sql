using System.Diagnostics;

public static void MapNetworkDrive(string networkPath, string username, string domain, string password)
{
    var process = new Process
    {
        StartInfo = new ProcessStartInfo
        {
            FileName = "net",
            Arguments = $"use {networkPath} /user:{domain}\\{username} {password}",
            RedirectStandardOutput = true,
            RedirectStandardError = true,
            UseShellExecute = false,
            CreateNoWindow = true,
        }
    };

    process.Start();
    string output = process.StandardOutput.ReadToEnd();
    string error = process.StandardError.ReadToEnd();
    process.WaitForExit();

    if (process.ExitCode != 0)
    {
        throw new Exception($"Failed to map network drive: {error}");
    }
}
MapNetworkDrive(@"\\server\share", "svc_vulcan", "yourdomain", "your_password");

// Now normal File.Copy or Directory operations
File.Copy(@"C:\Downloads\yourfile.txt", @"\\server\share\yourfolder\yourfile.txt", overwrite: true);
Process.Start("net", "use \\server\\share /delete");
