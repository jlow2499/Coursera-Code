polyreg <- function(df,o,a,b) {
        fit <- lm(a ~ poly(b,o,raw=TRUE))
        pred <- predict(fit,interval="confidence")
        cbind(df,pred)
}
