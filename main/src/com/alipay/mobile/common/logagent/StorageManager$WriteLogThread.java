package com.alipay.mobile.common.logagent;

class StorageManager$WriteLogThread
  implements Runnable
{
  private StorageManager$WriteLogThread(StorageManager paramStorageManager)
  {
  }

  public void run()
  {
    if (BehaviourIdEnum.MONITOR.equals(StorageManager.access$000(this.this$0)))
    {
      StorageManager.access$200(this.this$0, StorageManager.access$100(this.this$0) + ",%s,%s,%s,1,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s");
      return;
    }
    if ((BehaviourIdEnum.ERROR == StorageManager.access$000(this.this$0)) || (BehaviourIdEnum.EXCEPTION == StorageManager.access$000(this.this$0)))
    {
      StorageManager.access$300(this.this$0);
      StorageManager.access$400(this.this$0, "D-VM,%s,%s,%s,1,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s");
      return;
    }
    if ((BehaviourIdEnum.AUTO_CLICKED == StorageManager.access$000(this.this$0)) || (BehaviourIdEnum.AUTO_OPENPAGE == StorageManager.access$000(this.this$0)))
    {
      StorageManager.access$500(this.this$0, "D-VM,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s");
      return;
    }
    StorageManager.access$200(this.this$0, "D-VM,%s,%s,%s,1,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.logagent.StorageManager.WriteLogThread
 * JD-Core Version:    0.6.2
 */