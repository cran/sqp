# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#' @title
#' (Damped) BFGS Hessian approximation
#'  
#' @description
#' \code{BFGS} update for appromation of the Hessian matrix
#' \insertCite{@cf. @broyden70; @fletcher70; @goldfarb70; @shanno70}{sqp}
#' in its damped version proposed by \insertCite{powell78;textual}{sqp}.
#' The approximation is based on first-order information  
#' (parameter values & gradients) only.
#' 
#' @param hessian
#' \strong{Dense matrix}
#' of size \eqn{N \times N}{N x N}:\cr
#' Current approximation of the Hessian matrix, which is
#' updated by reference.\cr
#' Needs to be symmetric positive definite.\cr 
#' A common starting point for the \code{BFGS} algorithm is the identity matrix.
#'                                   
#' @param  old_y,new_y,old_gradient,new_gradient
#' \strong{Numeric vectors} 
#' of size \code{N}:\cr
#' parameters \bold{old_y},\bold{new_y} and\cr
#' corresponding gradients \bold{old_gradient},\bold{new_gradient}
#' from previous and current iteration.
#' 
#' @param constraint_adjustment
#' \strong{Boolean}:\cr
#' Whether to enforce positive definiteness\cr
#' (mainly for constrained optimization).
#' 
#' @return 
#' Nothing. Argument 'hessian' is updated by reference.
#' 
#' @references \insertAllCited{}
#' 
#' @export
bfgs_update <- function(hessian, old_y, new_y, old_gradient, new_gradient, constraint_adjustment = TRUE) {
    invisible(.Call('_sqp_bfgs_update', PACKAGE = 'sqp', hessian, old_y, new_y, old_gradient, new_gradient, constraint_adjustment))
}

#' @title
#' Auxiliary functions
#' 
#' @description
#' Auxiliary functions
#' 
#' @inherit qp_solver
#' 
#' @references \insertAllCited{}
#' 
#' @noRd
.solvers_slacked_dense <- function(x, Q, C_eq, C_ineq, l, t_eq, t_ineq, penalty, tol = 1e-7, max_iter = 500L, dim_eq = -1L, dim_ineq = -1L, dim_Q = -1L, solver = 0L, fast = FALSE, all_slack = FALSE, debug = FALSE) {
    .Call('_sqp_slacked_dense', PACKAGE = 'sqp', x, Q, C_eq, C_ineq, l, t_eq, t_ineq, penalty, tol, max_iter, dim_eq, dim_ineq, dim_Q, solver, fast, all_slack, debug)
}

#' @title
#' Auxiliary functions
#' 
#' @description
#' Auxiliary functions
#' 
#' @inherit qp_solver
#' 
#' @references \insertAllCited{}
#' 
#' @noRd
.solvers_slacked_sparse <- function(x, Q, C_eq, C_ineq, l, t_eq, t_ineq, penalty, tol = 1e-7, max_iter = 500L, dim_eq = -1L, dim_ineq = -1L, dim_Q = -1L, all_slack = FALSE, debug = FALSE) {
    .Call('_sqp_slacked_sparse', PACKAGE = 'sqp', x, Q, C_eq, C_ineq, l, t_eq, t_ineq, penalty, tol, max_iter, dim_eq, dim_ineq, dim_Q, all_slack, debug)
}

# Register entry points for exported C++ functions
methods::setLoadAction(function(ns) {
    .Call('_sqp_RcppExport_registerCCallable', PACKAGE = 'sqp')
})
