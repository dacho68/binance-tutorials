# binance-tutorials
Real-Time Candlestick Charts and Crypto Trading Bot using Binance API and Websockets

This source code is explained and demonstrated in my YouTube channel:

https://youtube.com/parttimelarry

Binance API series for the webapp starts here (there are 10 videos):

https://www.youtube.com/watch?v=rvhnz1yBHgQ

If you are only interested in the RSI bot:

https://youtu.be/GdlFhF6gjKo
-----------------------
Reference
https://github.com/tradingview/lightweight-charts

https://github.com/binance/binance-spot-api-docs/blob/master/web-socket-streams.md


API sample:
```
D:\dev\binance-tutorials>wscat -c wss://stream.binance.com:9443/ws/btcusdt@trade
D:\dev\binance-tutorials>wscat -c wss://stream.binance.com:9443/ws/btcusdt@kline_5m 

```



Response

```
{"e":"trade","E":1609780087992,"s":"BTCUSDT","t":544843124,"p":"31410.39000000","q":"0.00232800","b":4150080856,"a":4150080864,"T":1609780087991,"m":true,"M":true}


{"e":"kline","E":1609780534958,"s":"BTCUSDT","k":{"t":1609780500000,"T":1609780799999,"s":"BTCUSDT","i":"5m","f":544854853,"L":544856252,"o":"30987.01000000","c":"31043.66000000","h":"31109.18000000","l":"30983.86000000","v":"74.98431400","n":1400,"x":false,"q":"2327941.57129243","V":"49.56284200","Q":"1538578.64094853","B":"0"}}
```

