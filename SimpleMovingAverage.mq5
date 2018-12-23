void OnTick()
  {
      // Create an array for several prices
      double myMovingAverageArray[];
      
      // Define the properties for the Moving Average
      int movingAverageDefinition = iMA (_Symbol,_Period,20,0,MODE_SMA,PRICE_CLOSE);
      
      // Sort the price array from the current candle downwards
      ArraySetAsSeries(myMovingAverageArray,true);
      
      // Defined EA,one line,current candle,3 candles, store result 
      CopyBuffer(movingAverageDefinition,0,0,3,myMovingAverageArray);
      
      // Calculation EA for the current candle 
      double myMovingAverageValue=myMovingAverageArray[0];
      
      // Chart output of the current EA
      Comment ("MovingAverageValue: ",myMovingAverageValue);
   
  }

