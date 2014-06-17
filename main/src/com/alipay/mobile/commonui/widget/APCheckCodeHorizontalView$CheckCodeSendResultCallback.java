package com.alipay.mobile.commonui.widget;

class APCheckCodeHorizontalView$CheckCodeSendResultCallback
  implements SendResultCallback
{
  private APCheckCodeHorizontalView$CheckCodeSendResultCallback(APCheckCodeHorizontalView paramAPCheckCodeHorizontalView)
  {
  }

  public void onFail()
  {
    APCheckCodeHorizontalView.access$302(this.this$0, true);
    this.this$0.updateSendButtonEnableStatus();
  }

  public void onSuccess()
  {
    this.this$0.scheduleTimer();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView.CheckCodeSendResultCallback
 * JD-Core Version:    0.6.2
 */