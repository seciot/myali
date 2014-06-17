package com.alipay.mobile.onsitepay.payee;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import com.alipay.mobile.common.misc.CircularImageView;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.onsitepay.d;
import com.alipay.mobile.onsitepay.e;

public class FacePayeeHead extends FrameLayout
{
  public static String TAG = "FacePayeeHead";
  public static int startNum = 9999;
  private int a = 9999;
  private Handler b = new Handler();
  Bitmap originalHeadIcon;
  boolean payerIsOnline;
  String payerName;
  APTextView payer_account_name;
  CircularImageView payer_icon;
  APImageView payer_pay_success;
  boolean successed = false;
  String userId;

  public FacePayeeHead(Context paramContext)
  {
    this(paramContext, null);
  }

  public FacePayeeHead(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public FacePayeeHead(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    LayoutInflater.from(paramContext).inflate(e.f, this, true);
  }

  private void a(Bitmap paramBitmap)
  {
    if (!this.payerIsOnline)
    {
      CircularImageView localCircularImageView = this.payer_icon;
      int i = paramBitmap.getWidth();
      int j = paramBitmap.getHeight();
      int[] arrayOfInt = new int[i * j];
      paramBitmap.getPixels(arrayOfInt, 0, i, 0, 0, i, j);
      for (int k = 0; k < j; k++)
        for (int m = 0; m < i; m++)
        {
          int n = arrayOfInt[(m + i * k)];
          int i1 = (0xFF0000 & n) >> 16;
          int i2 = (0xFF00 & n) >> 8;
          int i3 = n & 0xFF;
          int i4 = (int)(0.3D * i1 + 0.59D * i2 + 0.11D * i3);
          int i5 = i4 | (0xFF000000 | i4 << 16 | i4 << 8);
          arrayOfInt[(m + i * k)] = i5;
        }
      Bitmap localBitmap = Bitmap.createBitmap(i, j, Bitmap.Config.RGB_565);
      localBitmap.setPixels(arrayOfInt, 0, i, 0, 0, i, j);
      localCircularImageView.setImageBitmap(localBitmap);
      return;
    }
    this.payer_icon.setImageBitmap(paramBitmap);
  }

  public int getNum()
  {
    return this.a;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public boolean isSuccessed()
  {
    return this.successed;
  }

  public boolean isUsed()
  {
    return this.a != startNum;
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.payer_icon = ((CircularImageView)findViewById(d.ad));
    this.payer_account_name = ((APTextView)findViewById(d.ac));
    this.payer_pay_success = ((APImageView)findViewById(d.an));
  }

  protected void paySuccess()
  {
    this.successed = true;
    if (this.originalHeadIcon != null)
      this.payer_icon.setImageBitmap(this.originalHeadIcon);
    this.payer_pay_success.setVisibility(0);
  }

  public void setNum(int paramInt)
  {
    this.a = paramInt;
  }

  protected void showPayerInfo(String paramString1, String paramString2, String paramString3, boolean paramBoolean, int paramInt)
  {
    new StringBuilder("userId=").append(paramString1).append(", payerName=").append(paramString2).append(", headUrl=").append(paramString3).append(",payerIsOnline").append(paramBoolean).append(",currentNum=").append(paramInt).toString();
    this.a = paramInt;
    this.userId = paramString1;
    this.payerName = paramString2;
    this.payerIsOnline = paramBoolean;
    this.successed = false;
    this.b.post(new u(this, paramString3, paramString2));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payee.FacePayeeHead
 * JD-Core Version:    0.6.2
 */