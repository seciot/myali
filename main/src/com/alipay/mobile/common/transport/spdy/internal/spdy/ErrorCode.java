package com.alipay.mobile.common.transport.spdy.internal.spdy;

public enum ErrorCode
{
  public final int httpCode;
  public final int spdyGoAwayCode;
  public final int spdyRstCode;

  static
  {
    INVALID_STREAM = new ErrorCode("INVALID_STREAM", 2, 1, 2, -1);
    UNSUPPORTED_VERSION = new ErrorCode("UNSUPPORTED_VERSION", 3, 1, 4, -1);
    STREAM_IN_USE = new ErrorCode("STREAM_IN_USE", 4, 1, 8, -1);
    STREAM_ALREADY_CLOSED = new ErrorCode("STREAM_ALREADY_CLOSED", 5, 1, 9, -1);
    INTERNAL_ERROR = new ErrorCode("INTERNAL_ERROR", 6, 2, 6, 2);
    FLOW_CONTROL_ERROR = new ErrorCode("FLOW_CONTROL_ERROR", 7, 3, 7, -1);
    STREAM_CLOSED = new ErrorCode("STREAM_CLOSED", 8, 5, -1, -1);
    FRAME_TOO_LARGE = new ErrorCode("FRAME_TOO_LARGE", 9, 6, 11, -1);
    REFUSED_STREAM = new ErrorCode("REFUSED_STREAM", 10, 7, 3, -1);
    CANCEL = new ErrorCode("CANCEL", 11, 8, 5, -1);
    COMPRESSION_ERROR = new ErrorCode("COMPRESSION_ERROR", 12, 9, -1, -1);
    INVALID_CREDENTIALS = new ErrorCode("INVALID_CREDENTIALS", 13, -1, 10, -1);
    ErrorCode[] arrayOfErrorCode = new ErrorCode[14];
    arrayOfErrorCode[0] = NO_ERROR;
    arrayOfErrorCode[1] = PROTOCOL_ERROR;
    arrayOfErrorCode[2] = INVALID_STREAM;
    arrayOfErrorCode[3] = UNSUPPORTED_VERSION;
    arrayOfErrorCode[4] = STREAM_IN_USE;
    arrayOfErrorCode[5] = STREAM_ALREADY_CLOSED;
    arrayOfErrorCode[6] = INTERNAL_ERROR;
    arrayOfErrorCode[7] = FLOW_CONTROL_ERROR;
    arrayOfErrorCode[8] = STREAM_CLOSED;
    arrayOfErrorCode[9] = FRAME_TOO_LARGE;
    arrayOfErrorCode[10] = REFUSED_STREAM;
    arrayOfErrorCode[11] = CANCEL;
    arrayOfErrorCode[12] = COMPRESSION_ERROR;
    arrayOfErrorCode[13] = INVALID_CREDENTIALS;
  }

  private ErrorCode(int paramInt3, int arg4, int arg5)
  {
    this.httpCode = paramInt3;
    int i;
    this.spdyRstCode = i;
    int j;
    this.spdyGoAwayCode = j;
  }

  public static ErrorCode fromHttp2(int paramInt)
  {
    for (ErrorCode localErrorCode : values())
      if (localErrorCode.httpCode == paramInt)
        return localErrorCode;
    return null;
  }

  public static ErrorCode fromSpdy3Rst(int paramInt)
  {
    for (ErrorCode localErrorCode : values())
      if (localErrorCode.spdyRstCode == paramInt)
        return localErrorCode;
    return null;
  }

  public static ErrorCode fromSpdyGoAway(int paramInt)
  {
    for (ErrorCode localErrorCode : values())
      if (localErrorCode.spdyGoAwayCode == paramInt)
        return localErrorCode;
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.ErrorCode
 * JD-Core Version:    0.6.2
 */