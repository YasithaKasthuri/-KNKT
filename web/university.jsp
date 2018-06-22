<%-- 
    Document   : university
    Created on : Jun 12, 2018, 11:28:50 PM
    Author     : DEll
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <link rel="apple-touch-icon" sizes="76x76" href="img/apple-icon.png">
        <link rel="icon" type="image/png" href="img/favicon.png">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>
        KNKT
    </title>
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
        <!--     Fonts and icons     -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
        <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <!-- CSS Files -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/customstyle.css" rel="stylesheet" />
        <link href="css/now-ui-dashboard.css" rel="stylesheet" />
    </head>
    
    <body class="">
        <%
            if (session.getAttribute("username")==null)
            {
                response.sendRedirect("log.jsp");
            }
            
        %>
        
    <div class="wrapper ">
        <div class="sidebar" data-color="orange">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
        KNKT
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="active ">
            <a href="#home">
              <p align="center">Home</p>
            </a>
          </li>
          <li>
            <a href="#profile">
             
              <p align="center">Profile</p>
            </a>
          </li>
          <li>
            <a href="#calendar">
              
              <p align="center">Calendar</p>
            </a>
          </li>
          <li>
            <a href="#chat">
              
              <p align="center">Chat</p>
            </a>
          </li>
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent  navbar-absolute bg-primary fixed-top">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
         <!--   <a class="navbar-brand" href="#pablo">Dashboard</a> -->
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
            <form>
              <div class="input-group no-border">
                <input type="text" value="" class="form-control" placeholder="Search...">
                <div class="input-group-append">
                  <div class="input-group-text">
                    
                  </div>
                </div>
              </div>
            </form>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="#pablo">
                  
                  <p>
                    <span class="d-lg-none d-md-block">Stats</span>
                  </p>
                </a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  
                  <p>
                    <span class="d-lg-none d-md-block">Some Actions</span>
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="#">Action</a>
                  <a class="dropdown-item" href="#">Another action</a>
                  <a class="dropdown-item" href="#">Something else here</a>
                </div>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#pablo">
                  
                  <p>
                    <span class="d-lg-none d-md-block">Account</span>
                  </p>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="row">
        <canvas id="bigDashboardChart"></canvas>
      </div>
      
      
      
      <div class="content" id="home">
        <div class="row">
          <div class="col-lg-4">
            <div class="card card-chart">
              <div class="card-header">
                 
                   <h4 class="card-title">Meetups</h4>
                    
              </div>
              <div class="card-body">
                <div class="chart-area">
                  <canvas id="lineChartExample"></canvas>
                </div>
              </div>
              <div class="card-footer">
                <div class="stats">
                  Just Updated
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="card card-chart">
              <div class="card-header">
               
                <h4 class="card-title">Events</h4>
                
              </div>
              <div class="card-body">
                <div class="chart-area">
                  <canvas id="lineChartExampleWithNumbersAndGrid"></canvas>
                </div>
              </div>
              <div class="card-footer">
                <div class="stats">
                   Just Updated
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="card card-chart">
              <div class="card-header">
                
                <h4 class="card-title">Workshops</h4>
              </div>
              <div class="card-body">
                <div class="chart-area">
                  <canvas id="barChartSimpleGradientsNumbers"></canvas>
                </div>
              </div>
              <div class="card-footer">
                <div class="stats">
                  Last 7 days
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6">
            <div class="card  card-tasks">
              <div class="card-header ">
                
                <h4 class="card-title">Job Offers</h4>
              </div>
              <div class="card-body ">
                <div class="table-full-width table-responsive">
                  <table class="table">
                    <tbody>
                      <tr>
                        <td>
                          <div class="form-check">
                            <label class="form-check-label">
                              <input class="form-check-input" type="checkbox" checked>
                              <span class="form-check-sign"></span>
                            </label>
                          </div>
                        </td>

                        <td class="text-left">Sign contract for "What are conference organizers afraid of?"</td>
                        <td class="td-actions text-right">
                          <button type="button" rel="tooltip" title="" class="btn btn-info btn-round btn-icon btn-icon-mini btn-neutral" data-original-title="Edit Task">
                            <i class="now-ui-icons ui-2_settings-90"></i>
                          </button>
                          <button type="button" rel="tooltip" title="" class="btn btn-danger btn-round btn-icon btn-icon-mini btn-neutral" data-original-title="Remove">
                            <i class="now-ui-icons ui-1_simple-remove"></i>
                          </button>
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <div class="form-check">
                            <label class="form-check-label">
                              <input class="form-check-input" type="checkbox">
                              <span class="form-check-sign"></span>
                            </label>
                          </div>
                        </td>

                        <td class="text-left">Lines From Great Russian Literature? Or E-mails From My Boss?</td>
                        <td class="td-actions text-right">
                          <button type="button" rel="tooltip" title="" class="btn btn-info btn-round btn-icon btn-icon-mini btn-neutral" data-original-title="Edit Task">
                            <i class="now-ui-icons ui-2_settings-90"></i>
                          </button>
                          <button type="button" rel="tooltip" title="" class="btn btn-danger btn-round btn-icon btn-icon-mini btn-neutral" data-original-title="Remove">
                            <i class="now-ui-icons ui-1_simple-remove"></i>
                          </button>
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <div class="form-check">
                            <label class="form-check-label">
                              <input class="form-check-input" type="checkbox" checked>
                              <span class="form-check-sign"></span>
                            </label>
                          </div>
                        </td>
                        
                        <td class="text-left">Flooded: One year later, assessing what was lost and what was found when a ravaging rain swept through metro Detroit
                        </td>
                        <td class="td-actions text-right">
                          <button type="button" rel="tooltip" title="" class="btn btn-info btn-round btn-icon btn-icon-mini btn-neutral" data-original-title="Edit Task">
                            <i class="now-ui-icons ui-2_settings-90"></i>
                          </button>
                          <button type="button" rel="tooltip" title="" class="btn btn-danger btn-round btn-icon btn-icon-mini btn-neutral" data-original-title="Remove">
                            <i class="now-ui-icons ui-1_simple-remove"></i>
                          </button>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
                <div class="stats">
                  <i class="now-ui-icons loader_refresh spin"></i> Updated 3 minutes ago
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="card">
              <div class="card-header">
                
                <h4 class="card-title">Internships</h4>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table">
                    <thead class=" text-primary">
                      <th>
                        Name
                      </th>
                      <th>
                        Country
                      </th>
                      <th>
                        City
                      </th>
                      <th class="text-right">
                        Salary
                      </th>
                    </thead>
                    <tbody>
                      <tr>
                        <td>
                          Dakota Rice
                        </td>
                        <td>
                          Niger
                        </td>
                        <td>
                          Oud-Turnhout
                        </td>
                        <td class="text-right">
                          $36,738
                        </td>
                      </tr>
                      <tr>
                        <td>
                          Minerva Hooper
                        </td>
                        <td>
                          Curaçao
                        </td>
                        <td>
                          Sinaai-Waas
                        </td>
                        <td class="text-right">
                          $23,789
                        </td>
                      </tr>
                      <tr>
                        <td>
                          Sage Rodriguez
                        </td>
                        <td>
                          Netherlands
                        </td>
                        <td>
                          Baileux
                        </td>
                        <td class="text-right">
                          $56,142
                        </td>
                      </tr>
                      <tr>
                        <td>
                          Doris Greene
                        </td>
                        <td>
                          Malawi
                        </td>
                        <td>
                          Feldkirchen in Kärnten
                        </td>
                        <td class="text-right">
                          $63,542
                        </td>
                      </tr>
                      <tr>
                        <td>
                          Mason Porter
                        </td>
                        <td>
                          Chile
                        </td>
                        <td>
                          Gloucester
                        </td>
                        <td class="text-right">
                          $78,615
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
   <%--   <footer class="footer">
        <div class="container-fluid">
          <nav>
            <ul>
              <li>
                <a href="https://www.creative-tim.com">
                  Creative Tim
                </a>
              </li>
              <li>
                <a href="http://presentation.creative-tim.com">
                  About Us
                </a>
              </li>
              <li>
                <a href="http://blog.creative-tim.com">
                  Blog
                </a>
              </li>
            </ul>
          </nav>
          <%--  <div class="copyright">
            &copy;
            <script>
              document.write(new Date().getFullYear())
            </script>, Designed by
            <a href="https://www.invisionapp.com" target="_blank">Invision</a>. Coded by
            <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a>.
</div> 
        </div>
      </footer> --%>
          
         
          <div id="profile">
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              this is profile<br>
              
              
          </div>
          
          <div id="calendar">
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
              this is calendar<br>
          </div>
          
          <div id="chat">
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
              this is chat area<br>
          </div>
          
          
          
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="js/core/jquery.min.js"></script>
  <script src="js/core/popper.min.js"></script>
  <script src="js/core/bootstrap.min.js"></script>
  <script src="js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="js/now-ui-dashboard.min.js?v=1.1.0" type="text/javascript"></script>
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      demo.initDashboardPageCharts();

    });
  </script>
    </body>
</html>
