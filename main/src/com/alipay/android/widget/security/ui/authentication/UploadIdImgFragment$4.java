package com.alipay.android.widget.security.ui.authentication;

import android.annotation.SuppressLint;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

class UploadIdImgFragment$4
  implements View.OnClickListener
{
  UploadIdImgFragment$4(UploadIdImgFragment paramUploadIdImgFragment)
  {
  }

  @SuppressLint({"SimpleDateFormat"})
  public void onClick(View paramView)
  {
    try
    {
      Date localDate = new Date();
      if (new SimpleDateFormat("yyyyMMdd").parse(UploadIdImgFragment.f(this.a)).before(localDate))
      {
        this.a.a().toast("身份证有效期不正确或已过期", 0);
        return;
      }
      if ((this.a.i == null) || (this.a.i.size() != 2))
      {
        this.a.a().toast("身份证照片异常，请重新拍摄", 0);
        return;
      }
      this.a.getInitLevel();
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.UploadIdImgFragment.4
 * JD-Core Version:    0.6.2
 */