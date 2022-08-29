require(readr)
require(ggplot2)
require(ggthemes)

theme_set(theme_clean())

u00003s00002_hw00001 <- read_table2("../../Data/Controles30jun14/C01/session00002/u00003s00002_hw00001.svc", 
                                    col_names = FALSE, skip = 1)
names(u00003s00002_hw00001) <- c("x", "y", "Time", "On/Off", "Azimuth", "Altitude", "Pressure")

ggplot(u00003s00002_hw00001, aes(x=x, y=y)) +
  geom_point(size=.01) +
  coord_fixed()
ggsave(file="../../Figures/PDF/Control.pdf")

ggplot(u00003s00002_hw00001, aes(x=Time, y=x)) +
  geom_point(col="red") +
  geom_point(aes(x=Time, y=y), col="blue")

ggplot(u00003s00002_hw00001, aes(x=Time, y=Pressure)) +
  geom_point(size=.01)
ggplot(u00003s00002_hw00001, aes(x=Time, y=`On/Off`)) +
  geom_point(size=.01)
ggplot(u00003s00002_hw00001, aes(x=Time, y=Azimuth)) +
  geom_point(size=.01)
ggplot(u00003s00002_hw00001, aes(x=Time, y=Altitude)) +
  geom_point(size=.01)


u00005s00001_hw00001 <- read_table2("../../Data/Protocolo temblor/T001/session00001/u00005s00001_hw00001.svc", 
                                    col_names = FALSE, skip = 1)
names(u00005s00001_hw00001) <- c("x", "y", "Time", "On/Off", "Azimuth", "Altitude", "Pressure")

ggplot(u00005s00001_hw00001, aes(x=x, y=y)) +
  geom_point(size=.01) +
  coord_fixed()
ggsave(file="../../Figures/PDF/Ill.pdf")

ggplot(u00005s00001_hw00001, aes(x=Time, y=x)) +
  geom_point(col="red") +
  geom_point(aes(x=Time, y=y), col="blue")

