AUTO_DETECT_NEWVAR <- FALSE

script_results_identical <- function(result_name) {
  e <- get('e', parent.frame())
  if(exists(result_name, globalenv())) {
    user_res <- get(result_name, globalenv())
  } else {
    return(FALSE)
  }
  tempenv <- new.env()
  temp <- capture.output(
    local(
      try(
        source(e$correct_script_temp_path, local = TRUE),
        silent = TRUE
      ),
      envir = tempenv
    )
  )
  correct_res <- get(result_name, tempenv)
  identical(user_res, correct_res)
}

multi_expr_creates_var <- function(correctName=NULL){
  e <- get("e", parent.frame())
  delta <- if(!customTests$AUTO_DETECT_NEWVAR){
    safeEval(e$expr, e)
  } else {
    e$delta
  }
  if(is.null(correctName)){
    passed <- length(delta) > 0
  } else {
    passed <- correctName %in% names(delta)
  }
  passed <- isTRUE(passed)
  if(passed){
    e$newVar <- e$val
    e$newVarName <- names(delta)[1]
    e$delta <- mergeLists(delta, e$delta)
  }
  return(passed)
}

script_vals_identical <- function() {
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

