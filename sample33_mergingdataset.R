all.states <- as.data.frame(state.x77)
#all.states
all.states$Name <- rownames(state.x77)
rownames(all.states) <- NULL
str(all.states)
#creating subset
 cold.states <- all.states[all.states$Frost>150, c("Name", "Frost")]
 cold.states
 large.states <- all.states[all.states$Area >= 100000, c("Name", "Area")]
 large.states
#apply merge function
 merge(cold.states, large.states)
#union
 merge(cold.states, large.states, all = TRUE)