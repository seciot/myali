package com.alipay.android.widget.security.ui.authentication;

import android.graphics.Bitmap;
import android.os.Handler;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import com.alipay.mobile.security.securitycommon.ImageUtils;
import java.util.ArrayList;
import java.util.List;

class IdImageViewAcitvity$1
  implements Runnable
{
  IdImageViewAcitvity$1(IdImageViewAcitvity paramIdImageViewAcitvity, String[] paramArrayOfString, int paramInt)
  {
  }

  public void run()
  {
    IdImageViewAcitvity.a(this.c, new ArrayList());
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    for (int i = 0; i < this.a.length; i++)
    {
      Bitmap localBitmap = ImageUtils.a(this.a[i]);
      ImageView localImageView = new ImageView(this.c);
      localImageView.setLayoutParams(localLayoutParams);
      localImageView.setImageBitmap(localBitmap);
      IdImageViewAcitvity.a(this.c).add(localImageView);
    }
    IdImageViewAcitvity.e(this.c).post(new IdImageViewAcitvity.1.1(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.IdImageViewAcitvity.1
 * JD-Core Version:    0.6.2
 */