using RestSharp;
using System;

class Program
{
    static void Main()
    {
        var token = "your_bearer_token";
        var url = "https://yourapi.com"; // Base URL
        var endpoint = "/endpoint";      // GET endpoint

        var options = new RestClientOptions(url);
        var client = new RestClient(options);

        var request = new RestRequest(endpoint, Method.Get);

        // ✅ Add headers manually
        request.AddHeader("Accept", "application/json");
        request.AddHeader("Authorization", "Bearer " + token);

        // ✅ FORCE ADD Content-Type manually (acts like Python)
        request.AddHeader("Content-Type", "application/json"); // This works if no body is set

        // ❌ Do NOT call AddJsonBody, AddStringBody, etc. (those add body)
        // ✔ Body is still NONE — just like Python

        var response = client.Execute(request);

        Console.WriteLine("Status: " + response.StatusCode);
        Console.WriteLine("Content: " + response.Content);
        if (response.ErrorException != null)
        {
            Console.WriteLine("Error: " + response.ErrorException.Message);
        }
    }
}
