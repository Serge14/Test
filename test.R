print("test")
print("test", quote = FALSE)
print("test ok", quote = FALSE)


ggplot(a, aes(1:nrow(a))) + 
  geom_line(aes(y = x, colour = "Actual"), size = 1) + 
  geom_line(aes(y = z, colour = "Predicted"), size = 1) +
  theme_light() +
  labs(title = "Sales") +
  ylab("Sales (kg)") + 
  xlab("Periods") +
  theme(axis.title.y = element_text(angle=0, vjust = 1),
        axis.title.x = element_text(hjust = 1)) +
  theme(legend.position=c(0.93, 0.85)) +
  scale_colour_manual(values = c("Actual" = "red", "Predicted" = "blue"))
