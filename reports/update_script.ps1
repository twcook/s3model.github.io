$files = @(
    "DataFormatLandscapeInfographic.html",
    "Economic_andOperationalImpact.html",
    "Economic_and_Operational_Impact.html",
    "DataFormatComparisonandTradeoffs.html"
)

foreach ($file in $files) {
    $content = Get-Content -Path $file -Raw
    
    # Add CSS link and replace header
    $header_pattern = '(?s)<!DOCTYPE html>.*?<body.*?>'
    $header_replacement = @'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>S3Model.com - Report</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- S3Model CSS -->
    <link rel="stylesheet" href="../css/s3model.css">
    <!-- Keep original styles -->
    <style>
        /* Original styles will be kept */
    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        <div class="container">
            <div class="logo-container">
                <a href="../index.html">
                    <img src="../images/s3m_logo.png" alt="S3Model Logo">
                </a>
                <span class="brand-name">S3Model.com</span>
            </div>
        </div>
    </header>
    
    <!-- Main Content -->
    <div class="content-container">
        <main class="report-content">
'@

    # Replace the header
    $content = $content -replace $header_pattern, $header_replacement
    
    # Add footer
    $footer_pattern = '(?s)</body>\s*</html>'
    $footer_replacement = @'
        <div class="text-center mt-5">
            <a href="../index.html" class="btn btn-primary">Back to Home</a>
        </div>
        </main>
    </div>

    <!-- Footer -->
    <footer>
        <div class="container text-center">
            <p>Learn more about S3Model Studio - Coming Soon!</p>
            <p>&copy; <span id="currentYear"></span> S3Model.com. All Rights Reserved.</p>
        </div>
    </footer>

    <script>
        // Simple script to set the current year in the footer
        document.getElementById('currentYear').textContent = new Date().getFullYear();
    </script>
    <!-- Bootstrap JS Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
'@

    # Replace the footer
    $content = $content -replace $footer_pattern, $footer_replacement
    
    # Save the changes
    Set-Content -Path $file -Value $content
    
    Write-Host "Updated: $file"
}

Write-Host "All files have been updated!"