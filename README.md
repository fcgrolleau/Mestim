# Mestim

<!-- badges: start -->
[![R-CMD-check](https://github.com/cosimameyer/overviewR/workflows/R-CMD-check/badge.svg)]
[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/Mestim)](https://cran.r-project.org/package=Mestim)
[![license](https://img.shields.io/badge/license-MIT-blue)]
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![R badge](https://img.shields.io/badge/Build%20with-♥%20and%20R-blue)]


<!--<a href="https://diffify.com/R/overviewR" target="_blank"><img src="https://img.shields.io/static/v1?label=&amp;message=Diffify&amp;labelColor=black&amp;color=black&amp;style=flat-square&amp;logo=data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDI3LjAuMSwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IkxheWVyXzkiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IgoJIHZpZXdCb3g9IjAgMCAxMDI1LjUgNjA0LjIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDEwMjUuNSA2MDQuMjsiIHhtbDpzcGFjZT0icHJlc2VydmUiPgo8c3R5bGUgdHlwZT0idGV4dC9jc3MiPgoJLnN0MHtvcGFjaXR5OjAuNDkwMjtmaWxsOiNGQzcyN0E7ZW5hYmxlLWJhY2tncm91bmQ6bmV3ICAgIDt9Cgkuc3Qxe2ZpbGw6bm9uZTtzdHJva2U6I0ZDNzI3QTtzdHJva2Utd2lkdGg6MzA7c3Ryb2tlLWxpbmVjYXA6cm91bmQ7c3Ryb2tlLWxpbmVqb2luOnJvdW5kO3N0cm9rZS1taXRlcmxpbWl0OjEwO30KCS5zdDJ7ZmlsbDpub25lO3N0cm9rZTojRkM3MjdBO3N0cm9rZS13aWR0aDo0NztzdHJva2UtbWl0ZXJsaW1pdDoxMDt9Cgkuc3Qze29wYWNpdHk6MC40MzE0O2ZpbGw6I0ExRTgyQztlbmFibGUtYmFja2dyb3VuZDpuZXcgICAgO30KCS5zdDR7ZmlsbDpub25lO3N0cm9rZTojQTFFODJDO3N0cm9rZS13aWR0aDozMDtzdHJva2UtbGluZWNhcDpyb3VuZDtzdHJva2UtbGluZWpvaW46cm91bmQ7c3Ryb2tlLW1pdGVybGltaXQ6MTA7fQoJLnN0NXtmaWxsOm5vbmU7c3Ryb2tlOiNBMUU4MkM7c3Ryb2tlLXdpZHRoOjQ3O3N0cm9rZS1taXRlcmxpbWl0OjEwO30KPC9zdHlsZT4KPGcgaWQ9IkxheWVyXzlfY29weSI+Cgk8ZyBpZD0iTGF5ZXJfNyI+CgkJPHBhdGggY2xhc3M9InN0MCIgZD0iTTUxMS4zLDM3OS43Yy0wLjYtMTMuNi0xLjItMjcuMywwLjItNDFjLTIuMS0zLjMtNS01LjctOC4xLThjLTEuOS02LjQtMi4zLTEyLjUsMC0xOC44CgkJCWMxLjgtOC40LDIuOC0xNy4xLDMuNC0yNS43YzEuMi0yMiwxLjYtNDQuNC0zLjgtNjUuOWM2LjMtNS4zLDkuNi0xNC4xLDkuNi0yMi4xYy0xOS43LTkuMi0zOC42LTIwLjgtNTMuNC0zNi45CgkJCWMtOS4zLTMuOS0xOC4yLTguOC0yNy4yLTEzLjRjLTEsMC4yLTIsMC40LTMsMC41Yy00LjMtMi40LTguOS0zLjYtMTMuNy00Yy0xLjgtMS40LTMuNS0yLjktNS40LTQuMmMtMC42LTEuNi0xLjMtMy4xLTIuMS00LjYKCQkJYy05LjYtNi41LTIwLjQtMTAuMi0zMC4yLTE2LjRjLTAuNywyLjMtMy4zLDIuOS01LjUsMS41djBjLTguOS00LjEtMTYuOS0xMC4xLTI1LjYtMTQuN2MtMC4xLDAtMC4yLDAtMC4zLDAKCQkJYy0xLjktMS41LTQuMi0yLjYtNi40LTMuN2MwLTAuMS0wLjEtMC4xLTAuMS0wLjJjLTcuMi00LjgtMTUuMi04LjUtMjIuMi0xMy43Yy0yMi4yLDAuNi00MS43LDE0LjMtNjAuNywyNC40YzAsMCwwLjEtMC4xLDAuMS0wLjEKCQkJYy0xMS41LDYuNy0yMy41LDEyLjgtMzUuOCwxNy45Yy0xNS41LDguMi0zNi4xLDExLTQ1LjQsMjcuNGMtNS4zLDEuOC0xMC4yLDQuNi0xNC45LDcuNGMtMi4zLTEuNC01LTIuMy03LjctMi42CgkJCWMtMTguNywxMC45LTM3LjMsMjItNTUuOSwzMy4xYy0xLjksMTUuNC00LjcsMzAuNy01LjYsNDYuMmMtMC45LDYuNSwyLjIsMTcuMy0xLjcsMjIuNGMwLjMsMTAuMywzLjgsMjAuMyw3LjMsMjkuOQoJCQljLTEuOCwxMC45LTIuMywyMi4xLTEuNCwzMy4xYy0xLjEsMTAuNC0wLjYsMjEsMi41LDMxYy0yLjMsMi40LTQuMiw1LjItNi4xLDhjMC45LDE0LjQsMSwyOC44LTAuNCw0My4yCgkJCWM0LjYsNy40LDEwLjMsMTQuNywxOC45LDE3LjVjNS43LDUuMiwxMi42LDguNSwxOS43LDExLjNjMC4xLDAuMSwwLjEsMC4yLDAuMiwwLjNjNDUuMywyMi4xLDg4LjMsNDcuNCwxMzQuNyw2Ny4xCgkJCWMwLjktMC40LDEuOC0wLjgsMi43LTEuMmMwLjgsMS4yLDEuOCwyLjMsMi41LDMuNmMxMS4yLDUuOSwyMy41LDkuNCwzNC40LDE1LjljMTcuNi03LjMsMzQuNy0xNS42LDUxLjgtMjQKCQkJYzEuMy0yLjMsMi4yLTQuNywyLjctNy4yYzcuMy0wLjQsMTMuNy0zLjcsMjAuMS03YzE3LjQtMS42LDMxLjEtMTUuMyw0Ni4xLTIzLjRjMTUuOC05LjgsMzIuMS0xOC44LDQ4LjEtMjguMwoJCQljMTguMSwwLjQsMzMuNy0xMy4yLDM3LjktMzAuNkM1MTEuMywzOTYuMSw1MTEuNCwzODcuNiw1MTEuMywzNzkuN3oiLz4KCQk8ZyBpZD0iTGF5ZXJfMl9jb3B5Ij4KCQkJPHBvbHlnb24gY2xhc3M9InN0MSIgcG9pbnRzPSI5MS41LDQxNC44IDkwLjksMTk0LjYgMzAwLjEsODUuNSAzOTguNiwxMzcuNCA1MDguMywxOTQgNTA4LjEsNDE1LjEgMzAwLjEsNTIxLjkgCQkJIi8+CgkJCTxwb2x5Z29uIGNsYXNzPSJzdDEiIHBvaW50cz0iMzAwLjEsMzA0LjYgMTkxLjEsMjQ2LjggOTEuNSwxOTQgCQkJIi8+CgkJCTxwb2x5bGluZSBjbGFzcz0ic3QxIiBwb2ludHM9IjQ5Ny4xLDIwMi4xIDMwMC4xLDMwNC42IDMwMC4xLDUwMy4zIAkJCSIvPgoJCQk8ZyBpZD0iTGF5ZXJfM19jb3B5Ij4KCQkJCTxwYXRoIGNsYXNzPSJzdDIiIGQ9Ik0xOTUuOCwyNDkuM2wyMDIuOC0xMTEuOUwxOTUuOCwyNDkuM3oiLz4KCQkJPC9nPgoJCTwvZz4KCQk8ZyBpZD0iTGF5ZXJfOCI+CgkJCTxwYXRoIGNsYXNzPSJzdDMiIGQ9Ik05NTkuMywzODEuNGMtMS4yLTguNy0wLjctMTguNS02LjEtMjUuOWMtMS4yLTIxLjQsMC44LTQzLTItNjQuM2MtMS4xLTIyLDIuMy00NC4zLTEtNjYKCQkJCWM5LjctMjQuNy0yLjQtNTMuNS0zMS4yLTU0Yy0xNC43LTguMS0zMC45LTE0LjEtNDcuNy0xNmMtNi44LTQuNC0xNC4zLTguNS0yMi42LTguMmMtMC44LTAuNy0xLjUtMS4zLTIuMy0yCgkJCQljLTMtMjQuOS00My43LTQ0LjYtNjYuNC00NC4yYy0xMy4xLTExLjctMzEtMTYtNDguMi0xMi4yYy0xMi4xLDMuMi0yMC44LDEyLjUtMzAuNCwxOS44Yy0zMi4yLDEyLjYtNjEuNiwzMS04OC43LDUyLjgKCQkJCWMtMTcuMi0zLjYtMzEuOCw4LjctNDMuNywxOS42Yy0zNi4zLTEuOC00MC42LDQzLjgtMzYuNSw3MC44YzAuOCwxMS4zLTEuNCwyMy42LDQuNywzMy44Yy0wLjEsMTIuOS0zLjQsMjYuNiwxLjcsMzguOQoJCQkJYy0zLjMsMTMtMC40LDI2LjYtMi4zLDM5LjZjLTUuNCwyMy00LjksNDcuNCwxNi45LDYxLjhjNy45LDcuMSwxOS40LDUuNywyNi44LDEzLjFjOS42LDkuNSwyMi45LDguMiwzNC45LDEwLjkKCQkJCWM3LjUsMTEuNCwxNywyMi4zLDI5LjksMjcuM2M4LjksMywxNy40LTEuNSwyNi4yLTIuM2M5LjUsMTcsMjUuMSwyOC4yLDQyLjUsMzUuOGMxMywxMi44LDM1LjMsMTYsNDYuOS0wLjIKCQkJCWMyMS44LDUuOSwzNy44LTExLjksNTMuNC0yNGMxNC42LDUsMjYuNy02LjgsMzcuOS0xNC41YzE3LjItMTIuMiwzNi4yLTIxLjQsNTIuOS0zNC4zYzE5LjYsMTAuMSwzMi44LTguMiw0NS44LTE5LjkKCQkJCUM5NjAuMSw0MDguMiw5NTkuNSwzOTMuOSw5NTkuMywzODEuNHoiLz4KCQkJPGcgaWQ9IkxheWVyXzJfMDAwMDAxNjU5Mjk1NDE0Mzk0NTU0Njk3OTAwMDAwMTU0NjA5MDQwNjEwMzY2MTczNTVfIj4KCQkJCTxwb2x5Z29uIGNsYXNzPSJzdDQiIHBvaW50cz0iNTM4LDQxNC44IDUzNy41LDE5NC42IDc0Ni42LDg1LjUgODQ1LjIsMTM3LjQgOTU0LjksMTk0IDk1NC42LDQxNS4xIDc0Ni42LDUyMS45IAkJCQkiLz4KCQkJCTxwb2x5Z29uIGNsYXNzPSJzdDQiIHBvaW50cz0iNzQ2LjYsMzA0LjYgNjM3LjYsMjQ2LjggNTM4LDE5NCAJCQkJIi8+CgkJCQk8cG9seWxpbmUgY2xhc3M9InN0NCIgcG9pbnRzPSI5NDMuNywyMDIuMSA3NDYuNiwzMDQuNiA3NDYuNiw1MDMuMyAJCQkJIi8+CgkJCQk8ZyBpZD0iTGF5ZXJfMyI+CgkJCQkJPHBhdGggY2xhc3M9InN0NSIgZD0iTTY0Mi4zLDI0OS4zbDIwMi44LTExMS45TDY0Mi4zLDI0OS4zeiIvPgoJCQkJPC9nPgoJCQk8L2c+CgkJPC9nPgoJPC9nPgo8L2c+Cjwvc3ZnPgo=" alt="The Diffify page for the R package overviewR" style="width: 100px; max-width: 100%;"></a>-->
<!-- [![Rdoc](https://www.rdocumentation.org/badges/version/overviewR)](https://www.rdocumentation.org/packages/overviewR) -->
<!-- [![cran checks](https://cranchecks.info/badges/summary/overviewR)](https://cran.r-project.org/web/checks/check_results_overviewR.html) -->
<!-- [![](https://cranlogs.r-pkg.org/badges/version/overviewR)](https://www.r-pkg.org/badges/version/overviewR) -->
<!-- [![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0) -->
<!-- [![Last-changedate](https://img.shields.io/badge/last%20change-2022--09--12-green.svg)](/commits/master) -->
<!-- badges: end -->


<!-- badges: end -->

This package provides a flexible framework for estimating the variance-covariance matrix of estimated parameters.
Estimation relies on providing unbiased estimating functions to compute the empirical sandwich variance.
<sub><sup><a href="https://github.com/fcgrolleau/Mestim/blob/master/figures/spins.md">
<img src="figures/minimal.gif" align="right" alt="" width="160" />    what is this?</a> </sup></sub>
:monkey:

### Installation
```
library("devtools")
install_github("fcgrolleau/Mestim")
```

### Implementation
```
library(Mestim)

# Put estimated parameters in a list
thetas_hat <- list(theta_1=coef(mod)[1], theta_2=coef(mod)[2])

# Build a list of unbiased estimating functions
# NB: parameters' names must be consistent with the previous list
M_1 <- expression( ((1/(1+exp( -( theta_1 * x_1 + theta_2 * x_2 ) ))) - y ) * x_1 )
M_2 <- expression( ((1/(1+exp( -( theta_1 * x_1 + theta_2 * x_2 ) ))) - y ) * x_2 )
est_functions <- list(M_1, M_2)

## Pass arguments to get_vcov and obtain what you are looking for
res <- get_vcov(data=dat, thetas=thetas_hat, M=est_functions)
```
Find more information in the <a href="https://fcgrolleau.github.io/Mestim/vignette/vignette.html"> introduction vignette</a>.

### Authors
This package is written and maintained by François Grolleau (francois.grolleau@aphp.fr).

### References
- Boos DD. and Stefanski, LA.
<b>Essential Statistical Inference.</b> 2013. [<a href="https://doi.org/10.1007/978-1-4614-4818-1">Springer</a>]
- Tsiatis, AA., Davidian, M., Holloway, ST. and Laber, EB.
<b>Dynamic Treatment Regimes: Statistical Methods for Precision Medicine.</b> 2019. [<a href="https://doi.org/10.1201/9780429192692">CRC Press</a>]
