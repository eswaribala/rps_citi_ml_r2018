status <- c("excellent", "verygood", "good", "verygood", "good","fair")
ordered.status <- factor(status,levels = c("fair", "good", "verygood","excellent"),ordered = TRUE)
ordered.status
table(status)
table(ordered.status)