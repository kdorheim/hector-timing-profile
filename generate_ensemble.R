# There is probably a better way to go about this but the purposed of this script 
# is to generate the information for an ensemble size vs time plot. 
library(hector)
library(magrittr)

# Start by setting up the Hector core 
ini <- system.file("input/hector_ssp245.ini", package = "hector") 
hc <- newcore(ini)

X <- 1
rslt <- system.time({run(hc)})
df<- t(c(size = X, rslt))
write.csv(df, "rslt.csv",
            row.names = FALSE)

X <- 10
rslt <- system.time({
  lapply(X = 1:X, function(x){
    run(hc)
    out <- fetchvars(hc, 1900:2100, vars = GLOBAL_TAS())
    reset(hc)
  }
  )
})
df<- t(c(size = X, rslt))
write.table(df, "rslt.csv",
            append = TRUE,
            sep = ",",
            col.names = FALSE,
            row.names = FALSE,
            quote = FALSE)


X <- 50
rslt <- system.time({
  lapply(X = 1:X, function(x){
    run(hc)
    out <- fetchvars(hc, 1900:2100, vars = GLOBAL_TAS())
    reset(hc)
  }
  )
})
df<- t(c(size = X, rslt))
write.table(df, "rslt.csv",
            append = TRUE,
            sep = ",",
            col.names = FALSE,
            row.names = FALSE,
            quote = FALSE)

X <- 100
rslt <- system.time({
  lapply(X = 1:X, function(x){
    run(hc)
    out <- fetchvars(hc, 1900:2100, vars = GLOBAL_TAS())
    reset(hc)
  }
  )
})
df<- t(c(size = X, rslt))
write.table(df, "rslt.csv",
            append = TRUE,
            sep = ",",
            col.names = FALSE,
            row.names = FALSE,
            quote = FALSE)

X <- 200
rslt <- system.time({
  lapply(X = 1:X, function(x){
    run(hc)
    out <- fetchvars(hc, 1900:2100, vars = GLOBAL_TAS())
    reset(hc)
  }
  )
})
df<- t(c(size = X, rslt))
write.table(df, "rslt.csv",
            append = TRUE,
            sep = ",",
            col.names = FALSE,
            row.names = FALSE,
            quote = FALSE)


X <- 500
rslt <- system.time({
  lapply(X = 1:X, function(x){
    run(hc)
    out <- fetchvars(hc, 1900:2100, vars = GLOBAL_TAS())
    reset(hc)
  }
  )
})
df<- t(c(size = X, rslt))
write.table(df, "rslt.csv",
            append = TRUE,
            sep = ",",
            col.names = FALSE,
            row.names = FALSE,
            quote = FALSE)

X <- 1000
rslt <- system.time({
  lapply(X = 1:X, function(x){
    run(hc)
    out <- fetchvars(hc, 1900:2100, vars = GLOBAL_TAS())
    reset(hc)
  }
  )
})
df<- t(c(size = X, rslt))
write.table(df, "rslt.csv",
            append = TRUE,
            sep = ",",
            col.names = FALSE,
            row.names = FALSE,
            quote = FALSE)


X <- 5000
rslt <- system.time({
  lapply(X = 1:X, function(x){
    run(hc)
    out <- fetchvars(hc, 1900:2100, vars = GLOBAL_TAS())
    reset(hc)
  }
  )
})
df<- t(c(size = X, rslt))
write.table(df, "rslt.csv",
            append = TRUE,
            sep = ",",
            col.names = FALSE,
            row.names = FALSE,
            quote = FALSE)

X <- 10000
rslt <- system.time({
  lapply(X = 1:X, function(x){
    run(hc)
    out <- fetchvars(hc, 1900:2100, vars = GLOBAL_TAS())
    reset(hc)
  }
  )
})
df<- t(c(size = X, rslt))
write.table(df, "rslt.csv",
            append = TRUE,
            sep = ",",
            col.names = FALSE,
            row.names = FALSE,
            quote = FALSE)



