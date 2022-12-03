library("plotrix")  
library(constants)
hbar <- lookup("planck constant", ignore.case=TRUE)$value[4]

alpha_upup_0 <- complex(real = 0, imaginary = 0)
alpha_updown_0 <- complex(real = 1/sqrt(2), imaginary = 0)
alpha_downup_0 <- complex(real = -1/sqrt(2), imaginary = 0)
alpha_downdown_0 <- complex(0, imaginary = 0)
psi_0 <- c(alpha_upup_0, alpha_updown_0, alpha_downup_0, alpha_downdown_0) # psi_0 is the singlet state

H <- matrix(c(complex(1,1,0), complex(1,2,-1), complex(1,5,4), complex(1,9,-2),
              complex(1,2,1), complex(1,4,0), complex(1,0,-6), complex(1,4,1), 
              complex(1,5,-4), complex(1,0,6), complex(1,2,0), complex(1,6,-1),
              complex(1,9,2), complex(1,4,-1), complex(1,6,1), complex(1,7,0)
              )
            ,4,4) # H is hermitian

dec <- eigen(H)
E_j_val <- dec$values
E_j_vec <- dec$vectors 

schro_fun <- function(psi_0, E_j_val, E_j_vec, tm){
temp <- list()
for(it in 1:length(E_j_val)){
  temp[[it]] <- E_j_vec[,it] %*% t(E_j_vec[,it]) %*% psi_0 * exp(-complex(imaginary = 1)*E_j_val[it]*tm / hbar)
}

return( Reduce('+', temp) )
}

schro_dat <- data.frame(NULL)
it <- 0
for(new_t in seq(from=0, to=4*10^-34, length=100))
{
it <- it+1
#plot(NULL, xlim = c(-1.1,1.1), ylim = c(-1.1,1.1), xlab="real part", ylab="immaginary part", bty="n", las=1)
#draw.circle(0, 0, 1)

new_psi <- schro_fun(psi_0, E_j_val, E_j_vec, new_t)
schro_dat <- rbind(schro_dat, data.frame(t(new_psi), time=new_t))

print(new_psi)
print(it)
#arrows(0,0, x1 = Re(new_psi[1]), y1 = Im(new_psi[1]), col="red")
#arrows(0,0, x1 = Re(new_psi[2]), y1 = Im(new_psi[2]), col="blue")
}

comp_names <- c("UP_UP", "UP_DOWN", "DOWN_UP", "DOWN_DOWN")
ani_dat <- data.frame(NULL)

for(it in 1:(ncol(schro_dat)-1))
{
  temp <- data.frame(re = rep(NA, nrow(schro_dat) ))
  temp$re <- Re(schro_dat[,it])
  temp$im <- Im(schro_dat[,it])
  temp$Component <- comp_names[it]
  temp$time <- schro_dat$time
ani_dat <- rbind(ani_dat, temp)
}

ani_dat$Component <- factor(ani_dat$Component, levels = c("UP_UP", "UP_DOWN", "DOWN_UP", "DOWN_DOWN"))

library(ggplot2)
library(ggforce)
library(gganimate)
library(gifski)

animated_plot <- ggplot(ani_dat, aes(re, im, color = Component)) +
  geom_point(size=5) + coord_cartesian(xlim =c(-1.1,1.1), ylim = c(-1.1,1.1)) +
  theme_minimal() +  geom_circle(aes(x0=0, y0=0, r=1), linetype='solid', color='black', lwd=.5) + theme(
    plot.title = element_text(hjust = 0.5, size=20),
    axis.text=element_text(size=20), axis.title=element_text(size=25),
    legend.position = c(.99, .99),
    legend.justification = c("right", "top"),
    legend.box.just = "right",
    legend.margin = margin(1, 1, 1, 1)
  ) + scale_color_brewer(palette = "Spectral") + 
  # gganimate specific bits:
  labs(title = 'Two entangled spins in an electromagnetic field', x = 'Real part', y = 'Imaginary part', caption = 'Time: {frame_time} s') +
  transition_time(time) +
  ease_aes('linear')
#animated_plot

animate(animated_plot, duration = 10, fps=40, width = 600, height = 600, renderer = gifski_renderer())
anim_save("/Users/francois/Documents/schrodinger/newplot.gif")
