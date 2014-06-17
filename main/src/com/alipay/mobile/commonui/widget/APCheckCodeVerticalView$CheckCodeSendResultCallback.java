package com.alipay.mobile.commonui.widget;

class APCheckCodeVerticalView$CheckCodeSendResultCallback
  implements SendResultCallback
{
  private APCheckCodeVerticalView$CheckCodeSendResultCallback(APCheckCodeVerticalView paramAPCheckCodeVerticalView)
  {
  }

  public void onFail()
  {
    APCheckCodeVerticalView.access$302(this.this$0, true);
    this.this$0.updateSendButtonEnableStatus();
  }

  public void onSuccess()
  {
    this.this$0.scheduleTimer();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APCheckCodeVerticalView.CheckCodeSendResultCallback
 * JD-Core Version:    0.6.2
 */