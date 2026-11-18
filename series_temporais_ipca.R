# Remover uma tendência determinística de uma série temporal
dados <- read.table("clipboard", header = TRUE, dec = ",")
head(dados)

# Separa a primeira coluna (série do IPCA) e a segunda índice de tempo)
serie <- dados[,1]
mes <- dados[,2]

# Aplica o modelo de regressão linear para remover a tendência deterministica 
model <- lm(formula = serie ~ mes)

# Exibe os coeficientes( Intercepto e inclinação)
model$coefficients

# Resíduos da regressão
model$residuals



#Amortecimento Exponencial (com constante de amortecimento = 0,8)
# Transforma os dados em serie temporal começando em 2005( frequencia 12 para mensal)
serie <- ts(dados[,1], start = c(2005, 1), frequency = 12)

# Define os periodos de treino e validação
treino <- window(serie, end = c(2018,12))
validacao <- window(serie, start = c(2019, 1))
  
# Aplica o amortecimento exponencial
fit <- ses(treino, h = 12, alpha = 0.8)
  
# Plota o gráfico
plot(fit, main = "Previsões x Valores observados em 2019")
lines(validacao, lty = 3)

  
#Amortecimento Exponencial (incluindo a determinação do α )
# Aplica o SES estimando o alfa automaticamente (sem o argumento alpha)
fit <- ses(treino, h = 12)

# Exibe no console o alfa calculado, as previsões e as métricas de erro (RMSE, MAE, etc.)
summary(fit)

# Plota o gráfico das previsões com intervalos de confiança
plot(fit, main = "Previsões x Valores Observados nos Últimos 12 Meses")

# Adiciona a linha tracejada com os valores reais de 2019
lines(validacao, lty = 3)



#Método de Holt (incluindo a determinação dos parâmetros alpha e beta)
# Aplica o método de Holt para prever os 12 meses de 2019
fit_holt <- holt(treino, h = 12)

# Exibe no console os parâmetros estimados (alpha e beta), previsões e erros (RMSE, MAE, etc.)
summary(fit_holt)

# Plota o gráfico das previsões com intervalos de confiança de 80% e 95%
plot(fit_holt, main = "Previsões x Valores Observados nos Últimos 12 Meses (Holt)")

# Adiciona a linha tracejada com os valores reais de 2019 para comparação
lines(validacao, lty = 3)


#Método de Holt-Winters (incluindo a determinação dos parâmetros)
# Aplica o método de Holt-Winters para obter previsões para os 12 meses de 2019
fit <- hw(treino, h = 12)

# Exibe as constantes de amortecimento estimadas e as previsões correspondentes
summary(fit)

# Plota as previsões com intervalos de confiança de 80% e 95%
plot(fit, main = "Previsões x Valores Observados (Holt-Winters)")

# Adiciona a linha tracejada com os valores reais da validação
lines(validacao, lty = 3)


fit <- hw(treino, h = 12, seasonal = "multiplicative")
summary(fit)
plot(fit, main = "Previsões x Valores Observados (Holt-Winters Multiplicativo)")
lines(validacao, lty = 3)


































