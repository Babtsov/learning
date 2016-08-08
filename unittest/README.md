# Mockito

## Arrange
* ```when(mock.method(2, "asda")).thenReturn(something);``` mock returns something when method is called.  
* ```when(myMockedList.get(anyInt())).thenThrow(new NullPointerException());``` for non-void methods  
* ```doThrow(new RuntimeException()).when(myMockedList).clear();``` for void methods

## Assert
* ```verify(mock).method("someloggingInfo", cmdObj);```  Verifies certain behavior happened once.  
* ```assertThat(locoRecord.getMsg()).isEqualTo("");```
