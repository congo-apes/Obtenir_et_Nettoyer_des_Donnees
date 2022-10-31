match_call <- function(correct_call = NULL) {
  e <- get("e", parent.frame())
  if(is.null(correct_call)) return(TRUE)
  full_correct_call <- expand_call(correct_call)
  expr <- deparse(e$expr)
  full_user_expr <- try(expand_call(expr), silent = TRUE)
  if(is(full_user_expr, "try-error")) return(FALSE)
  identical(full_correct_call, full_user_expr)
}

expand_call <- function(call_string) {
  qcall <- parse(text=call_string)[[1]]
  if(length(qcall) <= 1) return(qcall)
  is_assign <- is(qcall, "<-")
  if(is_assign) {
    rhs <- qcall[[3]]
    if(!is.call(rhs)) return(qcall)
    fun <- match.fun(rhs[[1]])
    if(is.primitive(fun)) return(qcall)
    full_rhs <- match.call(fun, rhs)
    qcall[[3]] <- full_rhs
  } else { 
    fun <- match.fun(qcall[[1]])
    if(is.primitive(fun)) return(qcall)
    qcall <- match.call(fun, qcall)
  }
  qcall
}

prints_var <- function(varname) {
  e <- get("e", parent.frame())
  any_of_exprs(varname, paste0('print(', varname, ')'))
}

gets_help <- function(funcname) {
  e <- get("e", parent.frame())
  any_of_exprs(paste0('?', funcname),
               paste0('help(', funcname, ')'))
}

script_vals_identical <- function() {
  # Get e
  e <- get('e', parent.frame())
  user_val <- capture.output(
    local(
      try(
        eval(e$expr),
        silent = TRUE
      )
    )
  )
  correct_val <- capture.output(
    local(
      try(
        eval(parse(file = e$correct_script_temp_path)),
        silent = TRUE
      )
    )
  )
  identical(user_val, correct_val)
}

getState <- function(){
  environment(sys.function(1))$e
}

getVal <- function(){
  getState()$val
}

getExpr <- function(){
  getState()$expr
}

