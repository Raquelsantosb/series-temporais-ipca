# 📈 Análise de Séries Temporais e Previsão do IPCA em R

Este repositório reúne o código em R e os gráficos gerados no estudo prático de modelagem e previsão da série histórica do **IPCA (Índice Nacional de Preços ao Consumidor Amplo)**, abrangendo o período de janeiro de 2005 a dezembro de 2019 (com treino até dezembro de 2018 e validação para os 12 meses de 2019).

---

## 🛠️ Tecnologias e Pacotes Utilizados
* **Linguagem R** (RStudio)
* **Pacote `forecast`** (suavização exponencial e previsões)
* **Pacote `stats`** (séries temporais e janelas)

---

## 📂 Ficheiros do Projeto
* [`series_temporais_ipca.R`](series_temporais_ipca.R) — Script principal com o código da análise.
* **Gráficos (`.png`):**
  * `Amortecimento Exponencial (com constante de amortecimento = 0,8).png`
  * `Amortecimento Exponencial (incluindo a determinação do a ).png`
  * `Método de Holt (incluindo a determinação dos parâmetros alpha e beta).png`
  * `Método de Holt-Winters (incluindo a determinação dos parâmetros dos parâmetros).png`
  * `holt_winters_multiplicativo.png`

---

## 📊 Gráficos e Modelos

### 1. Amortecimento Exponencial Simples ($\alpha = 0,8$)
![Amortecimento Exponencial com constante de amortecimento = 0,8](Amortecimento%20Exponencial%20(com%20constante%20de%20amortecimento%20=%200,8).png)

### 2. Amortecimento Exponencial Simples (com determinação de $\alpha$)
![Amortecimento Exponencial incluindo a determinação do α](Amortecimento%20Exponencial%20(incluindo%20a%20determinação%20do%20α%20).png)

### 3. Método de Holt ($\alpha$ e $\beta$)
![Método de Holt incluindo a determinação dos parâmetros alpha e beta](Método%20de%20Holt%20(incluindo%20a%20determinação%20dos%20parâmetros%20alpha%20e%20beta).png)

### 4. Método de Holt-Winters
![Método de Holt-Winters incluindo a determinação dos parâmetros](Método%20de%20Holt-Winters%20(incluindo%20a%20determinação%20dos%20parâmetros).png)

### 5. Holt-Winters Multiplicativo
![Holt-Winters Multiplicativo](holt_winters_multiplicativo.png)

---

## 🚀 Como Executar
1. Tenha o **R** e o **RStudio** instalados.
2. Instale o pacote `forecast` caso ainda não o tenha:
   ```R
   install.packages("forecast")
