library(ggplot2)
library(readxl)
library(ggpmisc)
library(ggcorrplot)

#passe o arquivo onde quer trabalhar
setwd('C:/Users/55859/OneDrive/Área de Trabalho/projetos/projetos_r/evento_aula2')


df <- read_excel('dados/poluicao.xlsx')


ggplot(df,aes(x=nox,y=no2))+
  geom_point(size=2.8,shape=21,col='gray35',fill='tomato')+
  geom_smooth(method = 'lm', se=FALSE,formula = 'y ~ x')+
  stat_poly_eq(use_label(c('eq','R2') ))+
  labs(x='concentração nox',y= 'concentração no2')+
  theme_light()+
  facet_wrap(facets = vars(ano), nrow = 3)


ggsave(filename = 'figuras/regressão_poluição.png',scale = 1.5)
