package com.alipay.android.mini.widget;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.alipay.android.app.R.id;
import com.alipay.android.app.R.layout;

public class CustomToast
{
  public static void a(Activity paramActivity, int paramInt, String paramString)
  {
    View localView = paramActivity.getLayoutInflater().inflate(R.layout.k, null);
    ((ImageView)localView.findViewById(R.id.U)).setImageResource(paramInt);
    ((TextView)localView.findViewById(R.id.V)).setText(paramString);
    localView.getBackground().setAlpha(192);
    Toast localToast = new Toast(paramActivity.getApplicationContext());
    localToast.setGravity(17, 0, 0);
    localToast.setDuration(1);
    localToast.setView(localView);
    localToast.show();
  }

  public static void a(Context paramContext, String paramString)
  {
    Toast localToast = Toast.makeText(paramContext, paramString, 1);
    localToast.setGravity(17, 0, 0);
    localToast.show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.widget.CustomToast
 * JD-Core Version:    0.6.2
 */