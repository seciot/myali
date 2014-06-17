package com.alipay.mobileapp.biz.rpc.datatunnel.vo;

public enum DownloadResultReq$State
{
  static
  {
    DOWNLOADING = new State("DOWNLOADING", 1);
    DOWNLOADED = new State("DOWNLOADED", 2);
    COMPLETE = new State("COMPLETE", 3);
    State[] arrayOfState = new State[4];
    arrayOfState[0] = NEW;
    arrayOfState[1] = DOWNLOADING;
    arrayOfState[2] = DOWNLOADED;
    arrayOfState[3] = COMPLETE;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.datatunnel.vo.DownloadResultReq.State
 * JD-Core Version:    0.6.2
 */