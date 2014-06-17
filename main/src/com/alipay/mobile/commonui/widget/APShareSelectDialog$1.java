package com.alipay.mobile.commonui.widget;

class APShareSelectDialog$1
  implements APShareSelectDialog.OnShareSelectListener
{
  APShareSelectDialog$1(APShareSelectDialog paramAPShareSelectDialog)
  {
  }

  public void onSelect(int paramInt)
  {
    if (APShareSelectDialog.access$000(this.this$0) != null)
      APShareSelectDialog.access$000(this.this$0).onSelect(paramInt);
    this.this$0.dismiss();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APShareSelectDialog.1
 * JD-Core Version:    0.6.2
 */