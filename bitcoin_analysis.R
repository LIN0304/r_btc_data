# 變數說明：
# df: 儲存比特幣價格歷史資料的資料框
# df_clean: 經清理後資料框
# model_lin: 線性回歸模型
# model_poly: 多項式回歸模型
# predictions_lin: 線性回歸模型預測值
# predictions_poly: 多項式回歸模型預測值

# 讀取資料
df <- read.csv("bitcoin_price_data.csv")

# 前處理
df$date <- as.Date(df$date)
df_clean <- na.omit(df)

# 建模
model_lin <- lm(price ~ as.numeric(date), data = df_clean)
model_poly <- lm(price ~ poly(as.numeric(date), 2), data = df_clean)

# 預測
df_clean$pred_lin <- predict(model_lin, df_clean)
df_clean$pred_poly <- predict(model_poly, df_clean)

# 繪圖
library(ggplot2)
ggplot(df_clean, aes(x=date, y=price)) +
  geom_line(color="blue") +
  geom_line(aes(y=pred_lin), color="red") +
  geom_line(aes(y=pred_poly), color="green") +
  labs(title="Bitcoin Price Regression", x="Date", y="Price(USD)") +
  theme_minimal()