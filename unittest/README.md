## Mockito

* ```when(mock.method(2, "asda")).thenReturn(something);``` mock returns something when method is called.  
* ```verify(mock).method("someloggingInfo", cmdObj);```  Verifies certain behavior happened once.  
* ```when(myMockedList.get(anyInt())).thenThrow(new NullPointerException());``` for non-void methods  
* ```doThrow(new RuntimeException()).when(myMockedList).clear();``` for void methods
