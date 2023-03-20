func_uses_args <- function(...) {
  e <- get("e", parent.frame())
  expr <- e$expr
  correct_args <- list(...)
  if(is(expr, "<-")) expr <- expr[[3]]
  match_found <- try(sapply(correct_args, function(arg) arg %in% names(expr)))
  if(!all(is.logical(match_found))) {
    return(FALSE)
  }
  all(match_found)
}

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

test_arrive_val <- function() {
  e <- get('e', parent.frame())
  user_val <- e$val
  depart <- get('partir', globalenv())
  correct_val <- partir + hours(15) + minutes(50)
  identical(user_val, correct_val)
}

start_timer <- function() {
  e <- get('e', parent.frame())
  e$`__lesson_start_time` <- now()
  TRUE
}

stop_timer <- function() {
  e <- get('e', parent.frame())
  if(deparse(e$expr) == "chrono()") {
    start_time <- e$`__lesson_start_time`
    stop_time <- now()
    print(as.period(interval(start_time, stop_time)))
  }
  TRUE
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

