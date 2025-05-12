<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <title>C# Programming Revision - MU Student Portal</title>
  <link rel="stylesheet" href="../Content/bootstrap.css" />
</head>
<body>
  <div class="container mt-5">
    <h2>C# Programming - Random Q&A from PDFs</h2>

    <div id="question-box" class="mt-4">
      <h4 id="question">Click "Show Question" to begin.</h4>
      <button class="btn btn-primary" onclick="showQuestion()">Show Question</button>

      <div id="answer-box" class="mt-3" style="display:none;">
        <strong>Answer:</strong> <span id="answer"></span>
      </div>
      <button id="show-answer" class="btn btn-success mt-2" style="display:none;" onclick="showAnswer()">Show Answer</button>

      <div class="mt-4">
        <h5>View Original PDF Resources:</h5>
        <a href="../Resources/ASP_NET_Server_Controls_Short_QA.pdf" class="btn btn-info btn-block" target="_blank">
          ASP.NET Server Controls - Short Q&A
        </a>
        <a href="../Resources/Chapter_4_Navigation_and_Validation.pdf" class="btn btn-info btn-block" target="_blank">
          Chapter 4 - Navigation and Validation
        </a>
        <a href="../Resources/Chapter_Creating_Consistent_Looking_Websites.pdf" class="btn btn-info btn-block" target="_blank">
          Creating Consistent Looking Websites
        </a>
      </div>
    </div>

    <br />
    <a href="Subjects.aspx" class="btn btn-secondary">Back to Subjects</a>
  </div>

  <script>
      const questions = [
          // Server Controls PDF
          { q: "What is the role of HTTP?", a: "It allows communication between web browsers and servers." },
          { q: "What is an ASP.NET page?", a: "A Web Form (.aspx) that needs a server to process and display." },
          { q: "What is Application Mapping?", a: "It maps file extensions like .aspx to the app that handles them." },
          { q: "What are ASP.NET Server Controls?", a: "Controls like Button, Label, GridView used in Web Forms." },
          { q: "What is Postback?", a: "Sending form data back to the server." },
          { q: "What is AutoPostBack?", a: "A property that triggers postback on control change." },
          { q: "What is IsPostBack?", a: "Property to check if page was reloaded via postback." },
          { q: "POST vs GET methods?", a: "POST sends data securely in body, GET appends to URL." },

          // Navigation & Validation PDF
          { q: "What is website navigation?", a: "It's how users move between web pages using hyperlinks." },
          { q: "Why is navigation important?", a: "It helps users find content and connect pages into a full site." },
          { q: "What HTML element enables navigation?", a: "The <a> element with the href attribute." },
          { q: "What are ASP.NET navigation controls?", a: "SiteMapPath, TreeView, and Menu." },
          { q: "What does SiteMapPath do?", a: "Shows the user's path on the website." },
          { q: "What does TreeView do?", a: "Displays and lets users navigate the site structure." },
          { q: "What does Menu control do?", a: "Shows menu items and submenus on hover." },
          { q: "Why validate user input?", a: "To prevent invalid or harmful data from entering the system." },
          { q: "What are ASP.NET validation controls?", a: "Six controls like RequiredFieldValidator, RangeValidator, etc." },
          { q: "What is ValidationSummary?", a: "It shows a summary of all validation errors." },
          { q: "What does CustomValidator do?", a: "It allows custom validation on client and server side." },

          // Consistent Website PDF
          { q: "What is a Master Page?", a: "It's a layout template used to standardize the design of ASP.NET pages." },
          { q: "What does a Master Page provide?", a: "It provides a shared layout and placeholders for content pages." },
          { q: "What are Content Pages?", a: "Pages that hold specific content and merge with the master layout." },
          { q: "How is output produced?", a: "ASP.NET combines master and content pages into one web page." },
          { q: "Main benefit of a Master Page?", a: "Central control over layout; changes apply to all linked pages." },
          { q: "Is a Master Page directly viewable?", a: "No, it's a template and can't be requested by browser." },
          { q: "Design-time support in Visual Studio?", a: "Visual Studio allows preview and editing of layout during development." }
      ];

      function showQuestion() {
          const randomIndex = Math.floor(Math.random() * questions.length);
          const selected = questions[randomIndex];
          document.getElementById("question").innerText = selected.q;
          document.getElementById("answer").innerText = selected.a;
          document.getElementById("answer-box").style.display = "none";
          document.getElementById("show-answer").style.display = "inline-block";
      }

      function showAnswer() {
          document.getElementById("answer-box").style.display = "block";
          document.getElementById("show-answer").style.display = "none";
      }
  </script>
</body>
</html>
