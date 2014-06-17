package com.alipay.android.widget.security.ui.authentication;

import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APTextView;

class UploadIdImgFragment$3$1
  implements DatePickerDialog.OnDateSetListener
{
  UploadIdImgFragment$3$1(UploadIdImgFragment.3 param3)
  {
  }

  public final void a()
  {
    UploadIdImgFragment.a(this.a.a, "20991231");
    this.a.a.e.setText("长期");
    this.a.a.h.setEnabled(true);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3)
  {
    UploadIdImgFragment.b(this.a.a, paramInt1);
    UploadIdImgFragment.c(this.a.a, paramInt2 + 1);
    UploadIdImgFragment.d(this.a.a, paramInt3);
    UploadIdImgFragment localUploadIdImgFragment = this.a.a;
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Integer.valueOf(UploadIdImgFragment.c(this.a.a));
    arrayOfObject1[1] = Integer.valueOf(UploadIdImgFragment.d(this.a.a));
    arrayOfObject1[2] = Integer.valueOf(UploadIdImgFragment.e(this.a.a));
    UploadIdImgFragment.a(localUploadIdImgFragment, String.format("%d%02d%02d", arrayOfObject1));
    Object[] arrayOfObject2 = new Object[3];
    arrayOfObject2[0] = Integer.valueOf(UploadIdImgFragment.c(this.a.a));
    arrayOfObject2[1] = Integer.valueOf(UploadIdImgFragment.d(this.a.a));
    arrayOfObject2[2] = Integer.valueOf(UploadIdImgFragment.e(this.a.a));
    String str = String.format("%d年%02d月%02d日", arrayOfObject2);
    this.a.a.e.setText(str);
    this.a.a.h.setEnabled(true);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.UploadIdImgFragment.3.1
 * JD-Core Version:    0.6.2
 */