# Resume Website Commit Generator
# This script creates 113 incremental commits building up the resume website

$ErrorActionPreference = "Stop"

# Clear existing files temporarily
Remove-Item -Path "index.html" -ErrorAction SilentlyContinue
Remove-Item -Path "styles.css" -ErrorAction SilentlyContinue
Remove-Item -Path "README.md" -ErrorAction SilentlyContinue

# Commit counter
$commitNum = 1

function Make-Commit {
    param([string]$message)
    git add -A
    git commit -m "$commitNum. $message"
    Write-Host "Commit $commitNum`: $message" -ForegroundColor Green
    $script:commitNum++
}

# ===== PHASE 1: PROJECT SETUP (Commits 1-5) =====
Write-Host "`n=== Phase 1: Project Setup ===" -ForegroundColor Cyan

# Commit 1
"# Resume Website" | Out-File -FilePath "README.md" -Encoding utf8
Make-Commit "Initialize project with README"

# Commit 2
Add-Content -Path "README.md" -Value "`nProfessional resume website"
Make-Commit "Add project description"

# Commit 3
Add-Content -Path "README.md" -Value "`n## Author`nSarjan P"
Make-Commit "Add author information"

# Commit 4
"" | Out-File -FilePath "index.html" -Encoding utf8
Make-Commit "Create empty index.html"

# Commit 5
"" | Out-File -FilePath "styles.css" -Encoding utf8
Make-Commit "Create empty styles.css"

# ===== PHASE 2: HTML DOCTYPE AND HEAD (Commits 6-15) =====
Write-Host "`n=== Phase 2: HTML Structure ===" -ForegroundColor Cyan

# Commit 6
"<!DOCTYPE html>" | Out-File -FilePath "index.html" -Encoding utf8
Make-Commit "Add HTML5 doctype"

# Commit 7
Add-Content -Path "index.html" -Value "<html lang=`"en`">"
Make-Commit "Add html tag with lang attribute"

# Commit 8
Add-Content -Path "index.html" -Value "<head>"
Make-Commit "Add head section opening"

# Commit 9
Add-Content -Path "index.html" -Value "    <meta charset=`"UTF-8`">"
Make-Commit "Add charset meta tag"

# Commit 10
Add-Content -Path "index.html" -Value "    <meta name=`"viewport`" content=`"width=device-width, initial-scale=1.0`">"
Make-Commit "Add viewport meta tag"

# Commit 11
Add-Content -Path "index.html" -Value "    <meta name=`"description`" content=`"Sarjan P - Data Engineer Resume`">"
Make-Commit "Add description meta tag"

# Commit 12
Add-Content -Path "index.html" -Value "    <meta name=`"author`" content=`"Sarjan P`">"
Make-Commit "Add author meta tag"

# Commit 13
Add-Content -Path "index.html" -Value "    <title>Sarjan P - Resume</title>"
Make-Commit "Add page title"

# Commit 14
Add-Content -Path "index.html" -Value "    <link rel=`"icon`" type=`"image/png`" href=`"resumelogo.png`">"
Make-Commit "Add favicon link"

# Commit 15
Add-Content -Path "index.html" -Value "    <link rel=`"stylesheet`" href=`"styles.css`">"
Make-Commit "Link stylesheet"

# ===== PHASE 3: HTML HEAD COMPLETION AND BODY START (Commits 16-25) =====
Write-Host "`n=== Phase 3: Body Structure ===" -ForegroundColor Cyan

# Commit 16
Add-Content -Path "index.html" -Value "    <link href=`"https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap`" rel=`"stylesheet`">"
Make-Commit "Add Google Fonts link"

# Commit 17
Add-Content -Path "index.html" -Value "</head>"
Make-Commit "Close head section"

# Commit 18
Add-Content -Path "index.html" -Value "<body>"
Make-Commit "Add body opening tag"

# Commit 19
Add-Content -Path "index.html" -Value "    <!-- Animated Background -->"
Make-Commit "Add background comment"

# Commit 20
Add-Content -Path "index.html" -Value "    <div class=`"bg-animation`">"
Make-Commit "Add background animation container"

# Commit 21
Add-Content -Path "index.html" -Value "        <div class=`"floating-shapes`">"
Make-Commit "Add floating shapes container"

# Commit 22
Add-Content -Path "index.html" -Value "            <div class=`"shape shape-1`"></div>"
Make-Commit "Add first floating shape"

# Commit 23
Add-Content -Path "index.html" -Value "            <div class=`"shape shape-2`"></div>"
Make-Commit "Add second floating shape"

# Commit 24
Add-Content -Path "index.html" -Value "            <div class=`"shape shape-3`"></div>"
Make-Commit "Add third floating shape"

# Commit 25
Add-Content -Path "index.html" -Value "            <div class=`"shape shape-4`"></div>"
Make-Commit "Add fourth floating shape"

# ===== PHASE 4: HEADER SECTION (Commits 26-35) =====
Write-Host "`n=== Phase 4: Header Section ===" -ForegroundColor Cyan

# Commit 26
Add-Content -Path "index.html" -Value "            <div class=`"shape shape-5`"></div>"
Make-Commit "Add fifth floating shape"

# Commit 27
Add-Content -Path "index.html" -Value "            <div class=`"shape shape-6`"></div>"
Make-Commit "Add sixth floating shape"

# Commit 28
Add-Content -Path "index.html" -Value "        </div>`n    </div>"
Make-Commit "Close background containers"

# Commit 29
Add-Content -Path "index.html" -Value "    <!-- Header -->"
Make-Commit "Add header comment"

# Commit 30
Add-Content -Path "index.html" -Value "    <header class=`"site-header`">"
Make-Commit "Add header element"

# Commit 31
Add-Content -Path "index.html" -Value "        <div class=`"header-content`">"
Make-Commit "Add header content wrapper"

# Commit 32
Add-Content -Path "index.html" -Value "            <div class=`"header-logo`">"
Make-Commit "Add logo container"

# Commit 33
Add-Content -Path "index.html" -Value "                <img src=`"resumelogo.png`" alt=`"Logo`" class=`"logo-img`">"
Make-Commit "Add logo image"

# Commit 34
Add-Content -Path "index.html" -Value "                <span class=`"logo-text`">Resume</span>"
Make-Commit "Add logo text"

# Commit 35
Add-Content -Path "index.html" -Value "            </div>"
Make-Commit "Close logo container"

# ===== PHASE 5: NAVIGATION (Commits 36-45) =====
Write-Host "`n=== Phase 5: Navigation ===" -ForegroundColor Cyan

# Commit 36
Add-Content -Path "index.html" -Value "            <nav class=`"header-nav`">"
Make-Commit "Add navigation element"

# Commit 37
Add-Content -Path "index.html" -Value "                <a href=`"#summary`">Summary</a>"
Make-Commit "Add summary nav link"

# Commit 38
Add-Content -Path "index.html" -Value "                <a href=`"#education`">Education</a>"
Make-Commit "Add education nav link"

# Commit 39
Add-Content -Path "index.html" -Value "                <a href=`"#experience`">Experience</a>"
Make-Commit "Add experience nav link"

# Commit 40
Add-Content -Path "index.html" -Value "                <a href=`"#projects`">Projects</a>"
Make-Commit "Add projects nav link"

# Commit 41
Add-Content -Path "index.html" -Value "                <a href=`"#skills`">Skills</a>"
Make-Commit "Add skills nav link"

# Commit 42
Add-Content -Path "index.html" -Value "            </nav>"
Make-Commit "Close navigation"

# Commit 43
Add-Content -Path "index.html" -Value "        </div>`n    </header>"
Make-Commit "Close header section"

# Commit 44
Add-Content -Path "index.html" -Value "    <!-- A4 Resume Container -->"
Make-Commit "Add resume container comment"

# Commit 45
Add-Content -Path "index.html" -Value "    <main class=`"resume-wrapper`">"
Make-Commit "Add main wrapper"

# ===== PHASE 6: RESUME HEADER (Commits 46-55) =====
Write-Host "`n=== Phase 6: Resume Header ===" -ForegroundColor Cyan

# Commit 46
Add-Content -Path "index.html" -Value "        <div class=`"a4-sheet`">"
Make-Commit "Add A4 sheet container"

# Commit 47
Add-Content -Path "index.html" -Value "            <div class=`"resume-header`">"
Make-Commit "Add resume header"

# Commit 48
Add-Content -Path "index.html" -Value "                <div class=`"header-left`">"
Make-Commit "Add header left section"

# Commit 49
Add-Content -Path "index.html" -Value "                    <h1 class=`"name`">SARJAN P</h1>"
Make-Commit "Add name heading"

# Commit 50
Add-Content -Path "index.html" -Value "                    <div class=`"contact-info`">"
Make-Commit "Add contact info container"

# Commit 51
Add-Content -Path "index.html" -Value "                        <p><span class=`"bullet`">*</span> Dharmapuri Tamil Nadu | <a href=`"tel:6385562064`" class=`"link`">6385562064</a> | <a href=`"mailto:sarjan6325@gmail.com`" class=`"link`">sarjan6325@gmail.com</a> | <a href=`"https://github.com/sarjanthecoder`" class=`"link`">github.com/sarjanthecoder</a></p>"
Make-Commit "Add primary contact line"

# Commit 52
Add-Content -Path "index.html" -Value "                        <p><span class=`"bullet`">*</span> Linkedin: <a href=`"https://www.linkedin.com/in/sarjan-p-7a97862a0`" class=`"link`">https://www.linkedin.com/in/sarjan-p-7a97862a0</a> | Portfolio: <a href=`"https://www.sarjan.site`" class=`"link`">www.sarjan.site</a></p>"
Make-Commit "Add LinkedIn and portfolio links"

# Commit 53
Add-Content -Path "index.html" -Value "                    </div>`n                </div>"
Make-Commit "Close contact and header left"

# Commit 54
Add-Content -Path "index.html" -Value "                <div class=`"header-right`">"
Make-Commit "Add header right section"

# Commit 55
Add-Content -Path "index.html" -Value "                    <div class=`"qr-container`">`n                        <img src=`"https://api.qrserver.com/v1/create-qr-code/?size=80x80&data=https://www.sarjan.site`" alt=`"QR Code`" class=`"qr-code`">`n                        <span class=`"qr-label`">portfolio</span>`n                    </div>`n                </div>`n            </div>"
Make-Commit "Add QR code section"

# ===== PHASE 7: SUMMARY SECTION (Commits 56-60) =====
Write-Host "`n=== Phase 7: Summary Section ===" -ForegroundColor Cyan

# Commit 56
Add-Content -Path "index.html" -Value "            <section id=`"summary`" class=`"section`">"
Make-Commit "Add summary section"

# Commit 57
Add-Content -Path "index.html" -Value "                <h2 class=`"section-title`">SUMMARY</h2>"
Make-Commit "Add summary title"

# Commit 58
Add-Content -Path "index.html" -Value "                <ul class=`"content-list`">"
Make-Commit "Add summary list"

# Commit 59
Add-Content -Path "index.html" -Value "                    <li>Data Engineer skilled in building scalable data pipelines and ETL workflows using Python, SQL, Spark, Airflow, and cloud platforms, with strong expertise in data modeling, performance optimization, automation, monitoring, reliability, and delivering analytics-ready datasets.</li>"
Make-Commit "Add summary content"

# Commit 60
Add-Content -Path "index.html" -Value "                </ul>`n            </section>"
Make-Commit "Close summary section"

# ===== PHASE 8: EDUCATION SECTION (Commits 61-70) =====
Write-Host "`n=== Phase 8: Education Section ===" -ForegroundColor Cyan

# Commit 61
Add-Content -Path "index.html" -Value "            <section id=`"education`" class=`"section`">"
Make-Commit "Add education section"

# Commit 62
Add-Content -Path "index.html" -Value "                <h2 class=`"section-title`">EDUCATION</h2>"
Make-Commit "Add education title"

# Commit 63
Add-Content -Path "index.html" -Value "                <div class=`"education-item`">`n                    <div class=`"edu-row`">`n                        <div class=`"edu-left`"><strong>B.TECH - Artificial Intelligence & Data Science</strong> | Shree Venkateshwara Hi-Tech Engineering College 3rd Year</div>`n                        <div class=`"edu-right`">2023 - 2027</div>`n                    </div>`n                    <p class=`"sub-info`">* CGPA: 7.7/10</p>`n                </div>"
Make-Commit "Add B.Tech education entry"

# Commit 64
Add-Content -Path "index.html" -Value "                <div class=`"education-item`">`n                    <div class=`"edu-row`">`n                        <div class=`"edu-left`"><strong>Higher Secondary Certificate</strong> | Govt boys Hr. Sec. School Kambainallur,dharmapuri.</div>`n                        <div class=`"edu-right`">2025 - 2026</div>`n                    </div>`n                    <p class=`"sub-info`">* Percentage: 63/100</p>`n                </div>"
Make-Commit "Add HSC education entry"

# Commit 65
Add-Content -Path "index.html" -Value "                <div class=`"education-item`">`n                    <div class=`"edu-row`">`n                        <div class=`"edu-left`"><strong>Secondary School Leaving Certificate</strong> | Govt boys Hr. Sec. School Kambainallur,dharmapuri.</div>`n                        <div class=`"edu-right`">2022 - 2023</div>`n                    </div>`n                </div>"
Make-Commit "Add SSLC education entry"

# Commit 66
Add-Content -Path "index.html" -Value "            </section>"
Make-Commit "Close education section"

# Commit 67
Add-Content -Path "index.html" -Value "            <section id=`"experience`" class=`"section`">"
Make-Commit "Add experience section"

# Commit 68
Add-Content -Path "index.html" -Value "                <h2 class=`"section-title`">EXPERIENCE</h2>"
Make-Commit "Add experience title"

# Commit 69
Add-Content -Path "index.html" -Value "                <div class=`"experience-item`">`n                    <div class=`"exp-header`">`n                        <div class=`"exp-title`"><strong>DATA SCIENCE INTERN</strong> | Snestrons IT Solutions | Hyderabad | Telangana |</div>`n                        <div class=`"exp-date`">(SEP/15/2025 - OCT/15/2025)</div>`n                    </div>"
Make-Commit "Add internship header"

# Commit 70
Add-Content -Path "index.html" -Value "                    <ul class=`"content-list`">`n                        <li>Built data-driven applications using Python, SQL, and ML libraries, and engineered scalable data preprocessing workflows with Airflow to automate and optimize pipeline scheduling.</li>`n                        <li>Developed insightful visualizations and dashboards to strengthen data-driven decision-making, while actively collaborating in Agile sprints using Git for streamlined version control.</li>`n                    </ul>`n                </div>`n            </section>"
Make-Commit "Add internship details and close experience"

# ===== PHASE 9: PROJECTS SECTION (Commits 71-80) =====
Write-Host "`n=== Phase 9: Projects Section ===" -ForegroundColor Cyan

# Commit 71
Add-Content -Path "index.html" -Value "            <section id=`"projects`" class=`"section`">"
Make-Commit "Add projects section"

# Commit 72
Add-Content -Path "index.html" -Value "                <h2 class=`"section-title`">PROJECTS</h2>"
Make-Commit "Add projects title"

# Commit 73
Add-Content -Path "index.html" -Value "                <div class=`"project-item`">"
Make-Commit "Add first project container"

# Commit 74
Add-Content -Path "index.html" -Value "                    <h3 class=`"project-title`">CUSTOMER CHURN PREDICTION</h3>"
Make-Commit "Add churn prediction title"

# Commit 75
Add-Content -Path "index.html" -Value "                    <ul class=`"content-list`">`n                        <li>Developed a machine-learning model to predict customer churn using Python, SQL, and scikit-learn, improving churn detection accuracy through feature engineering and data preprocessing workflows.</li>`n                    </ul>`n                </div>"
Make-Commit "Add churn prediction details"

# Commit 76
Add-Content -Path "index.html" -Value "                <div class=`"project-item`">"
Make-Commit "Add second project container"

# Commit 77
Add-Content -Path "index.html" -Value "                    <h3 class=`"project-title`">FRAUD DETECTION SYSTEM</h3>"
Make-Commit "Add fraud detection title"

# Commit 78
Add-Content -Path "index.html" -Value "                    <ul class=`"content-list`">`n                        <li>Built a real-time fraud detection system using Python, ML algorithms, and anomaly-detection techniques, enabling faster identification of suspicious transactions and enhancing overall model reliability.</li>`n                    </ul>`n                </div>"
Make-Commit "Add fraud detection details"

# Commit 79
Add-Content -Path "index.html" -Value "            </section>"
Make-Commit "Close projects section"

# Commit 80
Add-Content -Path "index.html" -Value "            <section id=`"skills`" class=`"section`">"
Make-Commit "Add skills section"

# ===== PHASE 10: SKILLS SECTION (Commits 81-90) =====
Write-Host "`n=== Phase 10: Skills Section ===" -ForegroundColor Cyan

# Commit 81
Add-Content -Path "index.html" -Value "                <h2 class=`"section-title`">TECHNICAL SKILLS</h2>"
Make-Commit "Add skills title"

# Commit 82
Add-Content -Path "index.html" -Value "                <div class=`"skills-grid`">"
Make-Commit "Add skills grid container"

# Commit 83
Add-Content -Path "index.html" -Value "                    <div class=`"skill-category`">`n                        <h4 class=`"skill-heading`">Programming</h4>`n                        <ul class=`"skill-list`">`n                            <li>Python</li>`n                            <li>SQL</li>`n                            <li>Shell Scripting</li>`n                        </ul>`n                    </div>"
Make-Commit "Add programming skills"

# Commit 84
Add-Content -Path "index.html" -Value "                    <div class=`"skill-category`">`n                        <h4 class=`"skill-heading`">Data Engineering</h4>`n                        <ul class=`"skill-list`">`n                            <li>ETL Pipelines</li>`n                            <li>Data Integration</li>`n                            <li>Workflow Orchestration (Airflow)</li>`n                        </ul>`n                    </div>"
Make-Commit "Add data engineering skills"

# Commit 85
Add-Content -Path "index.html" -Value "                    <div class=`"skill-category`">`n                        <h4 class=`"skill-heading`">Databases</h4>`n                        <ul class=`"skill-list`">`n                            <li>MongoDB</li>`n                            <li>MySQL</li>`n                            <li>PostgreSQL</li>`n                        </ul>`n                    </div>"
Make-Commit "Add database skills"

# Commit 86
Add-Content -Path "index.html" -Value "                </div>`n            </section>"
Make-Commit "Close skills section"

# Commit 87
Add-Content -Path "index.html" -Value "            <section class=`"section`">"
Make-Commit "Add hackathons section"

# Commit 88
Add-Content -Path "index.html" -Value "                <h2 class=`"section-title`">HACKATHONS</h2>"
Make-Commit "Add hackathons title"

# Commit 89
Add-Content -Path "index.html" -Value "                <div class=`"hackathon-item`">`n                    <h3 class=`"hackathon-title`">DEVPOST HACKATHON PARTICIPANT</h3>`n                    <ul class=`"content-list`">`n                        <li>Participated in a global Devpost hackathon and contributed to end-to-end ML model building, including data preprocessing, feature engineering, model training, and evaluation.</li>`n                    </ul>`n                </div>"
Make-Commit "Add Devpost hackathon entry"

# Commit 90
Add-Content -Path "index.html" -Value "                <div class=`"hackathon-item`">`n                    <h3 class=`"hackathon-title`">ORACLE APEX CLOUD DEVELOPER</h3>`n                    <ul class=`"content-list`">`n                        <li>Oracle APEX Cloud Developer * AI Association Foundation * AI Agent Studio - strengthened expertise in cloud technologies, automation, and AI solution workflows.</li>`n                    </ul>`n                </div>`n            </section>"
Make-Commit "Add Oracle APEX hackathon entry"

# ===== PHASE 11: FOOTER AND CLOSING (Commits 91-100) =====
Write-Host "`n=== Phase 11: Footer Section ===" -ForegroundColor Cyan

# Commit 91
Add-Content -Path "index.html" -Value "        </div>`n    </main>"
Make-Commit "Close A4 sheet and main"

# Commit 92
Add-Content -Path "index.html" -Value "    <!-- Footer -->"
Make-Commit "Add footer comment"

# Commit 93
Add-Content -Path "index.html" -Value "    <footer class=`"site-footer`">"
Make-Commit "Add footer element"

# Commit 94
Add-Content -Path "index.html" -Value "        <div class=`"footer-content`">"
Make-Commit "Add footer content wrapper"

# Commit 95
Add-Content -Path "index.html" -Value "            <p class=`"footer-text`">© 2025 made by sarjan</p>"
Make-Commit "Add copyright text"

# Commit 96
Add-Content -Path "index.html" -Value "            <div class=`"footer-links`">"
Make-Commit "Add footer links container"

# Commit 97
Add-Content -Path "index.html" -Value "                <a href=`"https://github.com/sarjanthecoder`">GitHub</a>"
Make-Commit "Add GitHub footer link"

# Commit 98
Add-Content -Path "index.html" -Value "                <a href=`"https://www.linkedin.com/in/sarjan-p-7a97862a0`">LinkedIn</a>"
Make-Commit "Add LinkedIn footer link"

# Commit 99
Add-Content -Path "index.html" -Value "                <a href=`"https://www.sarjan.site`">Portfolio</a>"
Make-Commit "Add Portfolio footer link"

# Commit 100
Add-Content -Path "index.html" -Value "            </div>`n        </div>`n    </footer>`n</body>`n</html>"
Make-Commit "Close footer and HTML document"

# ===== PHASE 12: CSS STYLING (Commits 101-113) =====
Write-Host "`n=== Phase 12: CSS Styling ===" -ForegroundColor Cyan

# Commit 101
@"
:root {
    --primary-gradient: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    --accent-gold: linear-gradient(90deg, #FFD700 0%, #FFA500 100%);
    --dark-bg: linear-gradient(135deg, #0c0c1e 0%, #1a1a3e 50%, #2d1b4e 100%);
}
"@ | Out-File -FilePath "styles.css" -Encoding utf8
Make-Commit "Add CSS root variables"

# Commit 102
Add-Content -Path "styles.css" -Value @"
* { margin: 0; padding: 0; box-sizing: border-box; }
html { scroll-behavior: smooth; }
body { font-family: 'Inter', sans-serif; background: var(--dark-bg); min-height: 100vh; display: flex; flex-direction: column; }
"@
Make-Commit "Add CSS reset and base styles"

# Commit 103
Add-Content -Path "styles.css" -Value @"
.bg-animation { position: fixed; top: 0; left: 0; width: 100%; height: 100%; z-index: -1; }
.floating-shapes { position: absolute; width: 100%; height: 100%; }
.shape { position: absolute; border-radius: 50%; filter: blur(60px); animation: float 20s ease-in-out infinite; }
"@
Make-Commit "Add background animation styles"

# Commit 104
Add-Content -Path "styles.css" -Value @"
.shape-1 { width: 400px; height: 400px; top: -100px; left: -100px; background: linear-gradient(135deg, rgba(102,126,234,0.3), rgba(118,75,162,0.3)); }
.shape-2 { width: 300px; height: 300px; top: 50%; right: -50px; background: linear-gradient(135deg, rgba(255,215,0,0.2), rgba(255,165,0,0.2)); animation-delay: -5s; }
.shape-3 { width: 350px; height: 350px; bottom: -100px; left: 30%; animation-delay: -10s; background: linear-gradient(135deg, rgba(102,126,234,0.3), rgba(118,75,162,0.3)); }
"@
Make-Commit "Add floating shape styles 1-3"

# Commit 105
Add-Content -Path "styles.css" -Value @"
.shape-4 { width: 250px; height: 250px; top: 20%; left: 60%; background: linear-gradient(135deg, rgba(236,72,153,0.2), rgba(239,68,68,0.2)); animation-delay: -15s; }
.shape-5 { width: 200px; height: 200px; bottom: 20%; right: 20%; animation-delay: -7s; background: linear-gradient(135deg, rgba(102,126,234,0.3), rgba(118,75,162,0.3)); }
.shape-6 { width: 280px; height: 280px; top: 40%; left: 10%; background: linear-gradient(135deg, rgba(34,211,238,0.2), rgba(59,130,246,0.2)); animation-delay: -12s; }
@keyframes float { 0%, 100% { transform: translate(0,0) scale(1); } 50% { transform: translate(50px,50px) scale(1.1); } }
"@
Make-Commit "Add floating shape styles 4-6 and animation"

# Commit 106
Add-Content -Path "styles.css" -Value @"
.site-header { background: rgba(10,10,30,0.8); backdrop-filter: blur(20px); padding: 15px 40px; position: sticky; top: 0; z-index: 100; border-bottom: 1px solid rgba(255,255,255,0.1); }
.header-content { max-width: 1200px; margin: 0 auto; display: flex; justify-content: space-between; align-items: center; }
.header-logo { display: flex; align-items: center; gap: 12px; }
.logo-img { width: 40px; height: 40px; border-radius: 8px; }
.logo-text { font-size: 1.5rem; font-weight: 800; background: var(--accent-gold); -webkit-background-clip: text; -webkit-text-fill-color: transparent; }
"@
Make-Commit "Add header styles"

# Commit 107
Add-Content -Path "styles.css" -Value @"
.header-nav { display: flex; gap: 8px; }
.header-nav a { color: rgba(255,255,255,0.8); text-decoration: none; padding: 10px 18px; border-radius: 25px; transition: all 0.3s; }
.header-nav a:hover { background: rgba(255,215,0,0.15); color: #FFD700; }
"@
Make-Commit "Add navigation styles"

# Commit 108
Add-Content -Path "styles.css" -Value @"
.resume-wrapper { flex: 1; display: flex; justify-content: center; padding: 50px 20px; }
.a4-sheet { width: 210mm; min-height: 297mm; background: #fff; box-shadow: 0 25px 80px rgba(0,0,0,0.5); padding: 20mm 15mm; border-radius: 8px; position: relative; }
.a4-sheet::before { content: ''; position: absolute; top: 0; left: 0; right: 0; height: 4px; background: var(--accent-gold); }
"@
Make-Commit "Add A4 sheet styles"

# Commit 109
Add-Content -Path "styles.css" -Value @"
.resume-header { display: flex; justify-content: space-between; margin-bottom: 15px; padding-bottom: 12px; border-bottom: 2px solid #333; }
.name { font-size: 2.4rem; font-weight: 900; letter-spacing: 3px; margin-bottom: 10px; }
.contact-info p { font-size: 0.82rem; margin-bottom: 5px; }
.link { color: #0066cc; text-decoration: none; }
.qr-container { padding: 10px; border: 2px solid #333; border-radius: 6px; text-align: center; }
.qr-code { width: 70px; height: 70px; }
.qr-label { font-size: 0.7rem; font-weight: 600; display: block; margin-top: 5px; }
"@
Make-Commit "Add resume header and QR code styles"

# Commit 110
Add-Content -Path "styles.css" -Value @"
.section { margin-bottom: 18px; }
.section-title { background: var(--accent-gold); color: #000; font-size: 1rem; font-weight: 700; padding: 7px 14px; margin-bottom: 12px; letter-spacing: 1.5px; }
.content-list { list-style: none; }
.content-list li { padding-left: 15px; margin-bottom: 6px; font-size: 0.84rem; position: relative; }
.content-list li::before { content: '*'; position: absolute; left: 0; }
"@
Make-Commit "Add section and list styles"

# Commit 111
Add-Content -Path "styles.css" -Value @"
.education-item, .experience-item, .project-item, .hackathon-item { margin-bottom: 12px; }
.edu-row, .exp-header { display: flex; justify-content: space-between; }
.edu-left, .exp-title { font-size: 0.84rem; }
.edu-right, .exp-date { font-size: 0.84rem; font-weight: 600; }
.sub-info { font-size: 0.8rem; color: #555; margin-left: 15px; }
.project-title, .hackathon-title { font-size: 0.84rem; font-weight: 700; margin-bottom: 5px; }
.skills-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 25px; }
.skill-heading { font-weight: 700; margin-bottom: 8px; }
.skill-list { list-style: none; }
.skill-list li { padding-left: 15px; font-size: 0.8rem; position: relative; }
.skill-list li::before { content: '*'; position: absolute; left: 0; }
"@
Make-Commit "Add education, experience, projects, and skills styles"

# Commit 112
Add-Content -Path "styles.css" -Value @"
.site-footer { background: rgba(10,10,30,0.9); backdrop-filter: blur(20px); padding: 25px 40px; border-top: 1px solid rgba(255,255,255,0.1); }
.footer-content { max-width: 1200px; margin: 0 auto; display: flex; justify-content: space-between; align-items: center; }
.footer-text { color: rgba(255,255,255,0.8); font-size: 0.95rem; }
.footer-links { display: flex; gap: 30px; }
.footer-links a { color: #FFD700; text-decoration: none; font-weight: 600; transition: color 0.3s; }
.footer-links a:hover { color: #fff; }
"@
Make-Commit "Add footer styles"

# Commit 113 - Final
Add-Content -Path "styles.css" -Value @"
@media print { .bg-animation, .site-header, .site-footer { display: none; } .a4-sheet { box-shadow: none; } }
@media (max-width: 900px) { .a4-sheet { width: 100%; padding: 25px; } .skills-grid { grid-template-columns: 1fr; } .header-nav { display: none; } .edu-row, .exp-header { flex-direction: column; } .footer-content { flex-direction: column; gap: 20px; } }
"@
# Update README with final info
Add-Content -Path "README.md" -Value "`n`n- Email: codecrafter2005@gmail.com`n- GitHub: github.com/sarjanthecoder`n`n## License`n© 2025 made by sarjan"
Make-Commit "Add responsive and print styles - Final commit"

Write-Host "`n=== COMPLETED ===" -ForegroundColor Green
Write-Host "Total commits created: $($commitNum - 1)" -ForegroundColor Yellow

# Verify commit count
$commitCount = (git log --oneline | Measure-Object -Line).Lines
Write-Host "Verified commit count: $commitCount" -ForegroundColor Cyan
