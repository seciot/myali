package com.alipay.android.setting.widgets;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.widget.TextView;
import android.widget.Toast;
import com.alipay.android.app.R.layout;

public class CustomToast
{
  public static void a(Activity paramActivity, int paramInt)
  {
    TextView localTextView = (TextView)paramActivity.getLayoutInflater().inflate(R.layout.an, null);
    localTextView.setText(paramInt);
    localTextView.getBackground().setAlpha(192);
    Toast localToast = new Toast(paramActivity.getApplicationContext());
    localToast.setDuration(0);
    localToast.setView(localTextView);
    localToast.show();
  }

  public static void a(Activity paramActivity, int paramInt1, int paramInt2)
  {
    TextView localTextView = (TextView)paramActivity.getLayoutInflater().inflate(R.layout.an, null);
    localTextView.setCompoundDrawablesWithIntrinsicBounds(paramInt1, 0, 0, 0);
    localTextView.setText(paramInt2);
    localTextView.getBackground().setAlpha(192);
    Toast localToast = new Toast(paramActivity.getApplicationContext());
    localToast.setGravity(17, 0, 0);
    localToast.setDuration(0);
    localToast.setView(localTextView);
    localToast.show();
  }

  public static void a(Activity paramActivity, int paramInt, String paramString)
  {
    TextView localTextView = (TextView)paramActivity.getLayoutInflater().inflate(R.layout.an, null);
    localTextView.setCompoundDrawablesWithIntrinsicBounds(paramInt, 0, 0, 0);
    localTextView.setText(paramString);
    localTextView.getBackground().setAlpha(192);
    Toast localToast = new Toast(paramActivity.getApplicationContext());
    localToast.setGravity(17, 0, 0);
    localToast.setDuration(0);
    localToast.setView(localTextView);
    localToast.show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.setting.widgets.CustomToast
 * JD-Core Version:    0.6.2
 */