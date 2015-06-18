polystat <- function(o,a,b) {
        fit <- lm(a ~ poly(b,o,raw=TRUE))
        summary(fit)
}
